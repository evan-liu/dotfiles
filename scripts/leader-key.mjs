import { readFile, writeFile } from 'node:fs/promises'

main().catch((err) => {
  console.error(err)
  process.exit(1)
})

async function main() {
  console.log('Adding Leader Key Mapping to README')
  const mapping = {}
  await readIdea(mapping)
  await readZed(mapping)
  await write(mapping)
  console.log('Done')
}

async function readIdea(mapping) {
  const ideaSrc = await readFile('./ideavimrc.vim', { encoding: 'utf8' })
  ideaSrc.split('\n').forEach((line) => {
    const match = line.match(/^map <leader>(<leader>)?(\w)(\w)? (<.*)$/)
    const [, leaderKey, catetoryKey, actionKey, action] = match || []
    if (catetoryKey && (actionKey || leaderKey) && action) {
      addKey(mapping, 'IdeaVim', catetoryKey, actionKey || 'leader', action)
    }
  })
}

async function readZed(mapping) {
  let zedSrc = await readFile('./zed-keymap.json', { encoding: 'utf8' })
  console.log(zedSrc)
  zedSrc = zedSrc.replace(/^\s*\/\/.*?$/gm, '')
  console.log(zedSrc)

  JSON.parse(zedSrc).forEach(({ bindings }) => {
    Object.entries(bindings).forEach(([key, action]) => {
      const match = key.match(/^space (space )?(\w) ?(\w)?$/)
      const [, leaderKey, catetoryKey, actionKey] = match || []
      if (catetoryKey && (actionKey || leaderKey)) {
        addKey(mapping, 'Zed', catetoryKey, actionKey || 'leader', action)
      }
    })
  })
}

function addKey(mapping, tool, category, key, action) {
  mapping[category] = {
    ...mapping[category],
    [key]: { ...mapping[category]?.[key], [tool]: action },
  }
}

async function write(mapping) {
  const file = './README.md'
  const code = await readFile(file, { encoding: 'utf8' })
  const [keep] = code.split(/#+ leader key/i)

  let result = `${keep}## Leader Key Mapping

| Key | Zed | IdeaVim |
| --- | --- | --- |
`

  const addLine = (keys, { Zed, IdeaVim }) => {
    const ideaActionMatch = IdeaVim?.match(/<Action>\((.*)\)/)
    const ideaAction = ideaActionMatch?.[1] || IdeaVim
    result += [
      '| ',
      '`' + keys.join('') + '`',
      ' | ',
      Zed ? '`' + Zed + '`' : '',
      ' | ',
      ideaAction ? '`' + ideaAction + '`' : '',
      ' |\n',
    ].join('')
  }

  Object.entries(mapping)
    .sort((a, b) => sortKey(a[0], b[0]))
    .forEach(([category, all], i) => {
      if (i !== 0) {
        result += '| | | |\n'
      }
      const { leader, ...rest } = all
      if (leader) {
        addLine(['␣', '␣', category], leader)
      }
      Object.entries(rest)
        .sort((a, b) => sortKey(a[0], b[0]))
        .forEach(([key, action]) => {
          addLine(['␣', category, key], action)
        })
    })

  await writeFile(file, result)
}

function sortKey(a, b) {
  const compareCode =
    a.toLowerCase().charCodeAt() - b.toLowerCase().charCodeAt()
  return compareCode === 0 ? (a < b ? 1 : -1) : compareCode
}
