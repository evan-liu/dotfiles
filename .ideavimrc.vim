"" Examples: https://jb.gg/share-ideavimrc
"" Commands: https://jb.gg/h38q75
"" Plugins:  https://jb.gg/ideavim-plugins
"" Map: https://vimdoc.sourceforge.net/htmldoc/map.html#map-overview

let mapleader=" "

" ==============================================================================
" Common settings
" ==============================================================================

set incsearch
set scrolloff=5
set showmode
set number relativenumber

" ==============================================================================
" Idea settings
" ==============================================================================

set ideajoin
set ideastatusicon=gray

" ==============================================================================
" Plugins
" ==============================================================================

" https://github.com/AlexPl292/IdeaVim-EasyMotion#supported-commands
" Install AceJump and IdeaVim-EasyMotion plugins
set easymotion
let g:EasyMotion_do_mapping=0

" https://github.com/JetBrains/ideavim/wiki/NERDTree-support#supported-commands
" j, k, o, p
set NERDTree

" https://github.com/tpope/vim-surround/blob/master/doc/surround.txt
" cs, ds, ys, yss, v_S
" b B r a -> ) } ] >
set surround

" https://github.com/terryma/vim-multiple-cursors/blob/master/doc/multiple_cursors.txt
" https://youtrack.jetbrains.com/issue/VIM-2178
set multiple-cursors

" https://github.com/tpope/vim-commentary/blob/master/doc/commentary.txt
" gcc, gc + motion, v_gc
set commentary

" https://github.com/vim-scripts/ReplaceWithRegister/blob/master/doc/ReplaceWithRegister.txt
" gr, grr
set ReplaceWithRegister

" https://www.vim.org/scripts/script.php?script_id=2699
" argument text objects: aa, ia
set argtextobj

" https://github.com/tommcdo/vim-exchange/blob/master/doc/exchange.txt
" cx{motion} to select, again to exchange; cxx, cxc, v_X
set exchange

" https://github.com/machakann/vim-highlightedyank/blob/master/doc/highlightedyank.txt
set highlightedyank

" https://github.com/adelarsq/vim-matchit/blob/master/doc/matchit.txt
set matchit

" https://plugins.jetbrains.com/plugin/19417-ideavim-quickscope
" Install IdeaVim-Quickscope plugin
set quickscope
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']

" ==============================================================================
" Others Mappings
" ==============================================================================

" Redo
nmap U <C-r>

nmap gb <Action>(Back)
nmap gf <Action>(Forward)
nmap gs <Action>(SelectInProjectView)
nmap gS <Action>(SelectIn)

" --------------------------------------
" C-W - Window/Split
" --------------------------------------
map <C-w>r <Action>(MoveTabRight)
map <C-w>d <Action>(MoveTabDown)
map <C-w>m <Action>(MoveEditorToOppositeTabGroup)
map <C-w>x <Action>(Unsplit)

" --------------------------------------
" J K with modifiers
" --------------------------------------
map <D-j> <Action>(MoveLineDown)
map <D-k> <Action>(MoveLineUp)
map <A-j> <Action>(MoveStatementDown)
map <A-k> <Action>(MoveStatementUp)
map <A-h> <Action>(MoveElementLeft)
map <A-l> <Action>(MoveElementRight)
map <C-j> <Action>(EditorUnSelectWord)
map <C-k> <Action>(EditorSelectWord)
nmap <D-A-j> <Action>(MethodDown)
nmap <D-A-k> <Action>(MethodUp)
nmap <D-C-j> <Action>(VcsShowNextChangeMarker)
nmap <D-C-k> <Action>(VcsShowPrevChangeMarker)
nmap <A-C-j> <Action>(GotoNextError)
nmap <A-C-k> <Action>(GotoPreviousError)
nmap <D-A-C-j> <Action>(EditorCloneCaretBelow)
nmap <D-A-C-k> <Action>(EditorCloneCaretAbove)
vmap <D-A-C-l> <Action>(EditorAddCaretPerSelectedLine)

" --------------------------------------
" multiple-cursors
" --------------------------------------
nmap <D-A-C-f> <Plug>NextWholeOccurrence
xmap <D-A-C-f> <Plug>NextWholeOccurrence
omap <D-A-C-f> <Plug>NextWholeOccurrence
nmap <D-A-C-g> <Plug>NextOccurrence
xmap <D-A-C-g> <Plug>NextOccurrence
omap <D-A-C-g> <Plug>NextOccurrence
xmap <D-A-C-s> <Plug>SkipOccurrence
xmap <D-A-C-x> <Plug>RemoveOccurrence
nmap <D-A-C-a> <Plug>AllWholeOccurrences
xmap <D-A-C-a> <Plug>AllWholeOccurrences
omap <D-A-C-a> <Plug>AllWholeOccurrences
nmap <D-A-C-b> <Plug>AllOccurrences
xmap <D-A-C-b> <Plug>AllOccurrences
omap <D-A-C-b> <Plug>AllOccurrences

" --------------------------------------
" y, d, p - Copy/Cut/Paste
" --------------------------------------
map <leader><leader>y <Action>(CopyReferencePopupGroup)
map <leader>y "+y
map <leader>d "_d
map <leader>p "+p
map <leader>P "+P

" --------------------------------------
" e - Execution/Run/Debug
" --------------------------------------
map <leader><leader>e <Action>(ChooseRunConfiguration)
map <leader><leader>E <Action>(ChooseDebugConfiguration)
map <leader>ee <Action>(editRunConfigurations)
map <leader>ed <Action>(Debug)
map <leader>eD <Action>(DebugClass)
map <leader>er <Action>(Run)
map <leader>eR <Action>(RunClass)
map <leader>ex <Action>(Stop)

" --------------------------------------
" i - Info
" --------------------------------------
nmap <leader><leader>i <Action>(QuickJavaDoc)
nmap <leader>ii <Action>(QuickImplementations)
nmap <leader>ie <Action>(ShowErrorDescription)
nmap <leader>id <Action>(QuickJavaDoc)
nmap <leader>ip <Action>(ParameterInfo)

" --------------------------------------
" f - Find/Search
" --------------------------------------
map <leader><leader>f <Plug>(easymotion-s)
map <leader>fc <Action>(GotoClass)
map <leader>ff <Action>(GotoFile)
map <leader>fs <Action>(GotoSymbol)
map <leader>fa <Action>(GotoAction)
map <leader>ft <Action>(TextSearchAction)

" --------------------------------------
" g - Goto (Code)
" --------------------------------------
nmap <leader><leader>g <Action>(GotoDeclaration)
nmap <leader>gd <Action>(GotoDeclaration)
nmap <leader>gt <Action>(GotoTypeDeclaration)
nmap <leader>gi <Action>(GotoImplementation)
nmap <leader>gr <Action>(GotoRelated)
nmap <leader>gs <Action>(GotoSuperMethod)
nmap <leader>gu <Action>(ShowUsages)
nmap <leader>gU <Action>(FindUsages)
nmap <leader>gm <Action>(FileStructurePopup)

" --------------------------------------
" r - Refactor
" --------------------------------------
nmap <leader><leader>r <Action>(Refactorings.QuickListPopupAction)
nmap <leader>rc <Action>(IntroduceConstant)
nmap <leader>rf <Action>(IntroduceField)
nmap <leader>ri <Action>(ExtractInterface)
nmap <leader>rl <Action>(Inline)
nmap <leader>rm <Action>(ExtractMethod)
nmap <leader>ro <Action>(Move)
nmap <leader>rp <Action>(IntroduceParameter)
nmap <leader>rr <Action>(RenameElement)
nmap <leader>rs <Action>(ChangeSignature)
nmap <leader>ru <Action>(MembersPullUp)
nmap <leader>rv <Action>(IntroduceVariable)

" --------------------------------------
" s - SwitchCase
" --------------------------------------
map <leader><leader>s <Action>(osmedile.intellij.stringmanip.SwitchCasePopup)
map <leader>sc <Action>(StringManipulation.ToCamelCase)
map <leader>ss <Action>(StringManipulation.ToSnakeCase)
map <leader>sk <Action>(StringManipulation.ToKebabCase)
map <leader>sp <Action>(StringManipulation.ToPascalCase)
map <leader>sC <Action>(osmedile.intellij.stringmanip.WordsCapitalizeAction)
map <leader>sS <Action>(StringManipulation.ToScreamingSnakeCase)

" --------------------------------------
" t - ToolWindow
" --------------------------------------
nmap <leader><leader>t <Action>(HideAllWindows)
nmap <leader>ta <Action>(ActivateAIAssistantToolWindow)
nmap <leader>tc <Action>(ActivateCommitToolWindow)
nmap <leader>td <Action>(ActivateDebugToolWindow)
nmap <leader>te <Action>(ActivateProblemsViewToolWindow)
nmap <leader>tf <Action>(ActivateFindToolWindow)
nmap <leader>tp <Action>(ActivateProjectToolWindow)
nmap <leader>tr <Action>(ActivateRunToolWindow)
nmap <leader>tt <Action>(ActivateTerminalToolWindow)
nmap <leader>tv <Action>(ActivateVersionControlToolWindow)
nmap <leader>tV <Action>(ActivatePullRequestsToolWindow)

" --------------------------------------
" v - Vcs
" --------------------------------------
map <leader><leader>v <Action>(Vcs.QuickListPopupAction)
map <leader>va <Action>(Vcs.ToggleAmendCommitMode)
map <leader>vb <Action>(Git.Branches)
map <leader>vc <Action>(CheckinProject)
map <leader>vd <Action>(Diff.ShowDiff)
map <leader>vf <Action>(Vcs.Log.ShowAllAffected)
map <leader>vh <Action>(Vcs.ShowTabbedFileHistory)
map <leader>vH <Action>(LocalHistory.ShowHistory)
map <leader>vl <Action>(Vcs.RollbackChangedLines)
map <leader>vm <Action>(Vcs.ShowMessageHistory)
map <leader>vp <Action>(Vcs.Push)
map <leader>vr <Action>(ChangesView.Revert)
map <leader>vu <Action>(Vcs.UpdateProject)

" --------------------------------------
" x - Close/Hide/Delete
" --------------------------------------
nmap <leader><leader>x <Action>(CloseProject)
nmap <leader>xn <Action>(CloseAllNotifications)

" --------------------------------------
" \ - IdeaVim
" --------------------------------------
nmap \\ <Action>(IdeaVim.ReloadVimRc.reload)
nmap \f <Action>(VimFindActionIdAction)
nmap \a <Action>(VimActions)
