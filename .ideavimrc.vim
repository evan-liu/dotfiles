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

map <C-j> <C-d>zz
map <C-k> <C-u>zz

map gb <Action>(Back)
map gf <Action>(Forward)
map gs <Action>(SelectInProjectView)
map gS <Action>(SelectIn)

map <leader><CR> <Action>(ShowIntentionActions)
map <leader>w <Action>(SaveAll)

" --------------------------------------
" C-W - Window/Split
" --------------------------------------
map <C-w>r <Action>(MoveTabRight)
map <C-w>d <Action>(MoveTabDown)
map <C-w>m <Action>(MoveEditorToOppositeTabGroup)
map <C-w>x <Action>(Unsplit)

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
" f - Find/Search
" --------------------------------------
map <leader><leader>f <Plug>(easymotion-s)
map <leader>fc <Action>(GotoClass)
map <leader>fe <Action>(SearchEverywhere)
map <leader>ff <Action>(GotoFile)
map <leader>fs <Action>(GotoSymbol)
map <leader>fa <Action>(GotoAction)
map <leader>ft <Action>(FindInPath)

map <leader>fp <Action>(ManageRecentProjects)
map <leader>fS <Action>(Scratch.ShowFilesPopup)

" --------------------------------------
" d - Doc/Info
" --------------------------------------
map <leader><leader>d <Action>(QuickJavaDoc)
map <leader>di <Action>(QuickImplementations)
map <leader>de <Action>(ShowErrorDescription)
map <leader>dd <Action>(QuickJavaDoc)
map <leader>dp <Action>(ParameterInfo)

" --------------------------------------
" s - Source Control
" --------------------------------------
map <leader><leader>s <Action>(Vcs.QuickListPopupAction)
map <leader>sa <Action>(Vcs.ToggleAmendCommitMode)
map <leader>sb <Action>(Git.Branches)
map <leader>sc <Action>(CheckinProject)
map <leader>sd <Action>(Compare.SameVersion)
map <leader>sf <Action>(Vcs.Log.ShowAllAffected)
map <leader>sh <Action>(Vcs.ShowTabbedFileHistory)
map <leader>sH <Action>(LocalHistory.ShowHistory)
map <leader>sl <Action>(Vcs.RollbackChangedLines)
map <leader>sm <Action>(Vcs.ShowMessageHistory)
map <leader>sn <Action>(Git.CreateNewBranch)
map <leader>sp <Action>(Vcs.Push)
map <leader>sr <Action>(ChangesView.Revert)
map <leader>su <Action>(Vcs.UpdateProject)

" --------------------------------------
" a - SwitchCase
" --------------------------------------
map <leader><leader>a <Action>(osmedile.intellij.stringmanip.SwitchCasePopup)
map <leader>ac <Action>(StringManipulation.ToCamelCase)
map <leader>as <Action>(StringManipulation.ToSnakeCase)
map <leader>ak <Action>(StringManipulation.ToKebabCase)
map <leader>ap <Action>(StringManipulation.ToPascalCase)
map <leader>aC <Action>(osmedile.intellij.stringmanip.WordsCapitalizeAction)
map <leader>aS <Action>(StringManipulation.ToScreamingSnakeCase)

" --------------------------------------
" j - Jump/Goto (Code)
" --------------------------------------
map <leader><leader>j <Action>(GotoDeclaration)
map <leader>jd <Action>(GotoDeclaration)
map <leader>jt <Action>(GotoTypeDeclaration)
map <leader>ji <Action>(GotoImplementation)
map <leader>jr <Action>(GotoRelated)
map <leader>js <Action>(GotoSuperMethod)
map <leader>ju <Action>(ShowUsages)
map <leader>jU <Action>(FindUsages)
map <leader>jm <Action>(FileStructurePopup)

" --------------------------------------
" k - Refactor
" --------------------------------------
map <leader><leader>k <Action>(Refactorings.QuickListPopupAction)
map <leader>kc <Action>(IntroduceConstant)
map <leader>kf <Action>(IntroduceField)
map <leader>ki <Action>(ExtractInterface)
map <leader>kl <Action>(Inline)
map <leader>km <Action>(ExtractMethod)
map <leader>ko <Action>(Move)
map <leader>kp <Action>(IntroduceParameter)
map <leader>kr <Action>(RenameElement)
map <leader>ks <Action>(ChangeSignature)
map <leader>ku <Action>(MembersPullUp)
map <leader>kv <Action>(IntroduceVariable)

" --------------------------------------
" l - ToolWindow
" --------------------------------------
map <leader><leader>l <Action>(HideAllWindows)
map <leader>la <Action>(ActivateAIAssistantToolWindow)
map <leader>lc <Action>(ActivateCommitToolWindow)
map <leader>ld <Action>(ActivateDebugToolWindow)
map <leader>lD <Action>(ActivateDatabaseToolWindow)
map <leader>le <Action>(ActivateProblemsViewToolWindow)
map <leader>lf <Action>(ActivateFindToolWindow)
map <leader>lp <Action>(ActivateProjectToolWindow)
map <leader>lr <Action>(ActivateRunToolWindow)
map <leader>lt <Action>(ActivateTerminalToolWindow)
map <leader>lv <Action>(ActivateVersionControlToolWindow)
map <leader>lV <Action>(ActivatePullRequestsToolWindow)

" --------------------------------------
" c - Code Completion
" --------------------------------------
map <leader><leader>c <Action>(CodeCompletion)
map <leader>cc <Action>(CodeCompletion)
map <leader>cC <Action>(SmartTypeCompletion)
map <leader>cs <Action>(SurroundWith)
map <leader>ct <Action>(InsertLiveTemplate)
map <leader>cu <Action>(Unwrap)

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
