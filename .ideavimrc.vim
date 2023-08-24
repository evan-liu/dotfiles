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
map U <C-r>

map gb <Action>(Back)
map gf <Action>(Forward)
map gs <Action>(SelectInProjectView)
map gS <Action>(SelectIn)

map <C-s> <Action>(SaveAll)

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
map <D-S-j> <Action>(MoveStatementDown)
map <D-S-k> <Action>(MoveStatementUp)
map <D-S-h> <Action>(MoveElementLeft)
map <D-S-l> <Action>(MoveElementRight)
map <A-j> <Action>(EditorUnSelectWord)
map <A-k> <Action>(EditorSelectWord)
map <C-j> <C-d>zz
map <C-k> <C-u>zz
map <D-A-j> <Action>(MethodDown)
map <D-A-k> <Action>(MethodUp)
map <D-C-j> <Action>(VcsShowNextChangeMarker)
map <D-C-k> <Action>(VcsShowPrevChangeMarker)
map <A-C-j> <Action>(GotoNextError)
map <A-C-k> <Action>(GotoPreviousError)
map <D-A-C-j> <Action>(EditorCloneCaretBelow)
map <D-A-C-k> <Action>(EditorCloneCaretAbove)
vmap <D-A-C-l> <Action>(EditorAddCaretPerSelectedLine)

" --------------------------------------
" multiple-cursors
" --------------------------------------
map <D-A-C-f> <Plug>NextWholeOccurrence
map <D-A-C-g> <Plug>NextOccurrence
map <D-A-C-s> <Plug>SkipOccurrence
map <D-A-C-x> <Plug>RemoveOccurrence
map <D-A-C-a> <Plug>AllWholeOccurrences
map <D-A-C-b> <Plug>AllOccurrences

" --------------------------------------
" y, d, p - Copy/Cut/Paste
" --------------------------------------
map <leader><leader>y <Action>(CopyReferencePopupGroup)
map <leader>y "+y
map <leader>Y "+Y
map <leader>d "_d
map <leader>D "_D
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
map <leader><leader>i <Action>(QuickJavaDoc)
map <leader>ii <Action>(QuickImplementations)
map <leader>ie <Action>(ShowErrorDescription)
map <leader>id <Action>(QuickJavaDoc)
map <leader>ip <Action>(ParameterInfo)

" --------------------------------------
" f - Find/Search
" --------------------------------------
map <leader><leader>f <Plug>(easymotion-s)
map <leader>fc <Action>(GotoClass)
map <leader>fe <Action>(SearchEverywhere)
map <leader>ff <Action>(GotoFile)
map <leader>fs <Action>(GotoSymbol)
map <leader>fa <Action>(GotoAction)
map <leader>ft <Action>(TextSearchAction)

map <leader>fp <Action>(ManageRecentProjects)

" --------------------------------------
" g - Goto (Code)
" --------------------------------------
map <leader><leader>g <Action>(GotoDeclaration)
map <leader>gd <Action>(GotoDeclaration)
map <leader>gt <Action>(GotoTypeDeclaration)
map <leader>gi <Action>(GotoImplementation)
map <leader>gr <Action>(GotoRelated)
map <leader>gs <Action>(GotoSuperMethod)
map <leader>gu <Action>(ShowUsages)
map <leader>gU <Action>(FindUsages)
map <leader>gm <Action>(FileStructurePopup)

" --------------------------------------
" r - Refactor
" --------------------------------------
map <leader><leader>r <Action>(Refactorings.QuickListPopupAction)
map <leader>rc <Action>(IntroduceConstant)
map <leader>rf <Action>(IntroduceField)
map <leader>ri <Action>(ExtractInterface)
map <leader>rl <Action>(Inline)
map <leader>rm <Action>(ExtractMethod)
map <leader>ro <Action>(Move)
map <leader>rp <Action>(IntroduceParameter)
map <leader>rr <Action>(RenameElement)
map <leader>rs <Action>(ChangeSignature)
map <leader>ru <Action>(MembersPullUp)
map <leader>rv <Action>(IntroduceVariable)

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
map <leader><leader>t <Action>(HideAllWindows)
map <leader>ta <Action>(ActivateAIAssistantToolWindow)
map <leader>tc <Action>(ActivateCommitToolWindow)
map <leader>td <Action>(ActivateDebugToolWindow)
map <leader>te <Action>(ActivateProblemsViewToolWindow)
map <leader>tf <Action>(ActivateFindToolWindow)
map <leader>tp <Action>(ActivateProjectToolWindow)
map <leader>tr <Action>(ActivateRunToolWindow)
map <leader>tt <Action>(ActivateTerminalToolWindow)
map <leader>tv <Action>(ActivateVersionControlToolWindow)
map <leader>tV <Action>(ActivatePullRequestsToolWindow)

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
map <leader>vn <Action>(Git.CreateNewBranch)
map <leader>vp <Action>(Vcs.Push)
map <leader>vr <Action>(ChangesView.Revert)
map <leader>vu <Action>(Vcs.UpdateProject)

" --------------------------------------
" x - Close/Hide/Delete
" --------------------------------------
map <leader><leader>x <Action>(CloseProject)
map <leader>xn <Action>(CloseAllNotifications)

" --------------------------------------
" \ - IdeaVim
" --------------------------------------
map \\ <Action>(IdeaVim.ReloadVimRc.reload)
map \f <Action>(VimFindActionIdAction)
map \a <Action>(VimActions)
