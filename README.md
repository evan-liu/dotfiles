# dotfiles

## karabiner-config

My [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements) config using [karabiner.ts](https://github.com/evan-liu/karabiner.ts) in [its own repo](https://github.com/evan-liu/karabiner-config).

## ideavimrc.vim

My [`.ideavimrc` file](https://github.com/evan-liu/dotfiles/blob/main/ideavimrc.vim) for [IdeaVim](https://lp.jetbrains.com/ideavim/). The `.vim` file extension is for syntax highlighting on GitHub.

## zed-{keymap|settings}.json

- [`zed-keymap.json`](https://github.com/evan-liu/dotfiles/blob/main/zed-keymap.json) - My `keymap` file for [Zed](https://zed.dev/).
- [`zed-settings.json`](https://github.com/evan-liu/dotfiles/blob/main/zed-settings.json) - My `settings` file for [Zed](https://zed.dev/).

## J K H L (normal mode)

| Key       | Zed                                | IdeaVim               |
| --------- | ---------------------------------- | --------------------- |
| `j`       | vim::Down                          | (vim)                 |
| `k`       | vim::Up                            | (vim)                 |
| `h`       | vim::Left                          | (vim)                 |
| `l`       | vim::Right                         | (vim)                 |
| `j` `⇧`   | vim::LineDown                      | EditorScrollDown      |
| `k` `⇧`   | vim::LineUp                        | EditorScrollUp        |
| `h` `⇧`   | vim::WindowTop                     | (vim)                 |
| `l` `⇧`   | vim::WindowBottom                  | (vim)                 |
| `j` `⌃`   | vim::ScrollDown                    | (vim `<C-d>zz`)       |
| `k` `⌃`   | vim::ScrollUp                      | (vim `<C-u>zz`)       |
| `h` `⌃`   | pane::GoBack                       | Back                  |
| `l` `⌃`   | pane::GoForward                    | Forward               |
| `j` `⌘`   | editor::SelectNext                 | FindWordAtCaret       |
| `k` `⌘`   | editor::SelectPrevious             | FindPrevWordAtCaret   |
| `j` `⌥`   | editor::SelectSmallerSyntaxNode    | EditorUnSelectWord    |
| `k` `⌥`   | editor::SelectLargerSyntaxNode     | EditorSelectWord      |
| `h` `⌥`   | pane::ActivatePrevItem             | PreviousTab           |
| `l` `⌥`   | pane::ActivateNextItem             | NextTab               |
| `j` `⌘⇧`  | editor::MoveLineDown               | MoveLineDown          |
| `k` `⌘⇧`  | editor::MoveLineUp                 | MoveLineUp            |
| `j` `⌃⇧`  |                                    | MoveStatementDown     |
| `k` `⌃⇧`  |                                    | MoveStatementUp       |
| `h` `⌃⇧`  |                                    | MoveElementLeft       |
| `l` `⌃⇧`  |                                    | MoveElementRight      |
| `j` `⌥⌃`  | editor::GoToDiagnostic             | GotoNextError         |
| `k` `⌥⌃`  | editor::GoToPrevDiagnostic         | GotoPreviousError     |
| `j` `⌘⌥`  |                                    | MethodDown            |
| `k` `⌘⌥`  |                                    | MethodUp              |
| `j` `⌘⌃`  |                                    | NextDiff              |
| `k` `⌘⌃`  |                                    | PreviousDiff          |
| `h` `⌘⌃`  |                                    | Diff.PreChange        |
| `l` `⌘⌃`  |                                    | Diff.NextChange       |
| `j` `⌘⌥⌃` | editor::AddSelectionBelow          | EditorCloneCaretBelow |
| `k` `⌘⌥⌃` | editor::AddSelectionAbove          | EditorCloneCaretAbove |
| `h` `⌘⌥⌃` | tab_switcher::Toggle (select_last) | SwitcherBackward      |
| `l` `⌘⌥⌃` | tab_switcher::Toggle               | SwitcherForward       |
