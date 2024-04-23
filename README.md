# dotfiles

- [`ideavimrc.vim`](https://github.com/evan-liu/dotfiles/blob/main/ideavimrc.vim) - `.ideavimrc` for [IdeaVim](https://lp.jetbrains.com/ideavim/). The `.vim` file extension is for syntax highlighting on GitHub.
- [`zed-keymap.json`](https://github.com/evan-liu/dotfiles/blob/main/zed-keymap.json) - `keymap` file for [Zed](https://zed.dev/).
- [`zed-settings.json`](https://github.com/evan-liu/dotfiles/blob/main/zed-settings.json) - `settings` file for [Zed](https://zed.dev/).

## H J K L with modifiers

Some of them are using [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements); config using [karabiner.ts](https://github.com/evan-liu/karabiner.ts) in [its own repo](https://github.com/evan-liu/karabiner-config/blob/main/src/rules/app-mappings.ts).

| Key       | Zed                                | IdeaVim               |
| --------- | ---------------------------------- | --------------------- |
| `j` `⇧`   | vim::LineDown                      | EditorScrollDown      |
| `k` `⇧`   | vim::LineUp                        | EditorScrollUp        |
| `h` `⇧`   | vim::WindowTop                     | (vim)                 |
| `l` `⇧`   | vim::WindowBottom                  | (vim)                 |
|           |                                    |                       |
| `j` `⌃`   | vim::ScrollDown                    | (vim `<C-d>zz`)       |
| `k` `⌃`   | vim::ScrollUp                      | (vim `<C-u>zz`)       |
| `h` `⌃`   | pane::GoBack                       | Back                  |
| `l` `⌃`   | pane::GoForward                    | Forward               |
|           |                                    |                       |
| `j` `⌘`   | editor::SelectNext                 | FindWordAtCaret       |
| `k` `⌘`   | editor::SelectPrevious             | FindPrevWordAtCaret   |
|           |                                    |                       |
| `j` `⌥`   | editor::SelectSmallerSyntaxNode    | EditorUnSelectWord    |
| `k` `⌥`   | editor::SelectLargerSyntaxNode     | EditorSelectWord      |
| `h` `⌥`   | pane::ActivatePrevItem             | PreviousTab           |
| `l` `⌥`   | pane::ActivateNextItem             | NextTab               |
|           |                                    |                       |
| `j` `⌘⇧`  | editor::MoveLineDown               | MoveLineDown          |
| `k` `⌘⇧`  | editor::MoveLineUp                 | MoveLineUp            |
|           |                                    |                       |
| `j` `⌃⇧`  |                                    | MoveStatementDown     |
| `k` `⌃⇧`  |                                    | MoveStatementUp       |
| `h` `⌃⇧`  |                                    | MoveElementLeft       |
| `l` `⌃⇧`  |                                    | MoveElementRight      |
|           |                                    |                       |
| `j` `⌥⌃`  | editor::GoToDiagnostic             | GotoNextError         |
| `k` `⌥⌃`  | editor::GoToPrevDiagnostic         | GotoPreviousError     |
|           |                                    |                       |
| `j` `⌘⌥`  |                                    | MethodDown            |
| `k` `⌘⌥`  |                                    | MethodUp              |
|           |                                    |                       |
| `j` `⌘⌃`  |                                    | NextDiff              |
| `k` `⌘⌃`  |                                    | PreviousDiff          |
| `h` `⌘⌃`  |                                    | Diff.PreChange        |
| `l` `⌘⌃`  |                                    | Diff.NextChange       |
|           |                                    |                       |
| `j` `⌘⌥⌃` | editor::AddSelectionBelow          | EditorCloneCaretBelow |
| `k` `⌘⌥⌃` | editor::AddSelectionAbove          | EditorCloneCaretAbove |
| `h` `⌘⌥⌃` | tab_switcher::Toggle (select_last) | SwitcherBackward      |
| `l` `⌘⌥⌃` | tab_switcher::Toggle               | SwitcherForward       |

## Leader Key Mapping

| Key         | Zed                               | IdeaVim                                                         |
| ----------- | --------------------------------- | --------------------------------------------------------------- |
| `␣` `␣` `y` |                                   | `<Action>(CopyReferencePopupGroup)`                             |
|             |                                   |                                                                 |
| `␣` `␣` `e` | `task::Spawn`                     | `<Action>(ChooseRunConfiguration)`                              |
| `␣` `e` `e` |                                   | `<Action>(editRunConfigurations)`                               |
| `␣` `e` `d` |                                   | `<Action>(Debug)`                                               |
| `␣` `e` `D` |                                   | `<Action>(DebugClass)`                                          |
| `␣` `e` `r` |                                   | `<Action>(Run)`                                                 |
| `␣` `e` `R` |                                   | `<Action>(RunClass)`                                            |
| `␣` `e` `x` |                                   | `<Action>(Stop)`                                                |
|             |                                   |                                                                 |
| `␣` `␣` `E` |                                   | `<Action>(ChooseDebugConfiguration)`                            |
|             |                                   |                                                                 |
| `␣` `␣` `f` |                                   | `<Action>(SearchEverywhere)`                                    |
| `␣` `f` `e` |                                   | `<Plug>(easymotion-s)`                                          |
| `␣` `f` `c` |                                   | `<Action>(GotoClass)`                                           |
| `␣` `f` `f` | `file_finder::Toggle`             | `<Action>(GotoFile)`                                            |
| `␣` `f` `s` |                                   | `<Action>(GotoSymbol)`                                          |
| `␣` `f` `a` | `command_palette::Toggle`         | `<Action>(GotoAction)`                                          |
| `␣` `f` `t` | `pane::DeploySearch`              | `<Action>(FindInPath)`                                          |
| `␣` `f` `S` |                                   | `<Action>(Scratch.ShowFilesPopup)`                              |
| `␣` `f` `j` |                                   | `<Action>(RecentFiles)`                                         |
| `␣` `f` `k` |                                   | `<Action>(RecentChangedFiles)`                                  |
| `␣` `f` `l` |                                   | `<Action>(RecentLocations)`                                     |
| `␣` `f` `p` | `projects::OpenRecent`            | `<Action>(ManageRecentProjects)`                                |
|             |                                   |                                                                 |
| `␣` `␣` `r` |                                   | `<Action>(Replace)`                                             |
| `␣` `r` `f` |                                   | `<Action>(ReplaceInPath)`                                       |
|             |                                   |                                                                 |
| `␣` `␣` `d` |                                   | `<Action>(QuickJavaDoc)`                                        |
| `␣` `d` `i` |                                   | `<Action>(QuickImplementations)`                                |
| `␣` `d` `e` |                                   | `<Action>(ShowErrorDescription)`                                |
| `␣` `d` `d` |                                   | `<Action>(QuickJavaDoc)`                                        |
| `␣` `d` `p` |                                   | `<Action>(ParameterInfo)`                                       |
| `␣` `d` `h` | `editor::Hover`                   | `<Action>(ShowHoverInfo)`                                       |
|             |                                   |                                                                 |
| `␣` `␣` `s` |                                   | `<Action>(Vcs.QuickListPopupAction)`                            |
| `␣` `s` `a` |                                   | `<Action>(Vcs.ToggleAmendCommitMode)`                           |
| `␣` `s` `b` | `branches::OpenRecent`            | `<Action>(Git.Branches)`                                        |
| `␣` `s` `B` | `editor::ToggleGitBlame`          | `<Action>(Annotate)`                                            |
| `␣` `s` `c` |                                   | `<Action>(CheckinProject)`                                      |
| `␣` `s` `d` |                                   | `<Action>(Compare.SameVersion)`                                 |
| `␣` `s` `f` |                                   | `<Action>(Git.Fetch)`                                           |
| `␣` `s` `F` |                                   | `<Action>(Vcs.Log.ShowAllAffected)`                             |
| `␣` `s` `h` |                                   | `<Action>(Vcs.ShowTabbedFileHistory)`                           |
| `␣` `s` `H` |                                   | `<Action>(LocalHistory.ShowHistory)`                            |
| `␣` `s` `l` |                                   | `<Action>(Vcs.RollbackChangedLines)`                            |
| `␣` `s` `m` |                                   | `<Action>(Vcs.ShowMessageHistory)`                              |
| `␣` `s` `n` |                                   | `<Action>(Git.CreateNewBranch)`                                 |
| `␣` `s` `N` |                                   | `<Action>(Github.Create.Pull.Request)`                          |
| `␣` `s` `p` |                                   | `<Action>(Vcs.Push)`                                            |
| `␣` `s` `r` |                                   | `<Action>(ChangesView.Revert)`                                  |
| `␣` `s` `s` |                                   | `<Action>(Git.Stash)`                                           |
| `␣` `s` `S` |                                   | `<Action>(Git.Unstash)`                                         |
| `␣` `s` `t` |                                   | `<Action>(Git.Tag)`                                             |
| `␣` `s` `u` |                                   | `<Action>(Vcs.UpdateProject)`                                   |
|             |                                   |                                                                 |
| `␣` `␣` `a` |                                   | `<Action>(osmedile.intellij.stringmanip.SwitchCasePopup)`       |
| `␣` `a` `c` |                                   | `<Action>(StringManipulation.ToCamelCase)`                      |
| `␣` `a` `s` |                                   | `<Action>(StringManipulation.ToSnakeCase)`                      |
| `␣` `a` `k` |                                   | `<Action>(StringManipulation.ToKebabCase)`                      |
| `␣` `a` `p` |                                   | `<Action>(StringManipulation.ToPascalCase)`                     |
| `␣` `a` `l` |                                   | `<Action>(osmedile.intellij.stringmanip.ToLowerCaseAction)`     |
| `␣` `a` `u` |                                   | `<Action>(osmedile.intellij.stringmanip.ToUpperCaseAction)`     |
| `␣` `a` `r` |                                   | `<Action>(osmedile.intellij.stringmanip.SwapCaseAction)`        |
| `␣` `a` `C` |                                   | `<Action>(osmedile.intellij.stringmanip.WordsCapitalizeAction)` |
| `␣` `a` `S` |                                   | `<Action>(StringManipulation.ToScreamingSnakeCase)`             |
|             |                                   |                                                                 |
| `␣` `␣` `j` |                                   | `<Action>(EditorPopupMenu.GoTo)`                                |
| `␣` `j` `d` | `editor::GoToDefinition`          | `<Action>(GotoDeclaration)`                                     |
| `␣` `j` `t` | `editor::GoToTypeDefinition`      | `<Action>(GotoTypeDeclaration)`                                 |
| `␣` `j` `T` | `editor::GoToTypeDefinitionSplit` | `<Action>(GotoTest)`                                            |
| `␣` `j` `i` | `editor::GoToImplementation`      | `<Action>(GotoImplementation)`                                  |
| `␣` `j` `o` |                                   | `<Action>(RevealGroup)`                                         |
| `␣` `j` `r` |                                   | `<Action>(GotoRelated)`                                         |
| `␣` `j` `s` |                                   | `<Action>(GotoSuperMethod)`                                     |
| `␣` `j` `u` | `editor::FindAllReferences`       | `<Action>(ShowUsages)`                                          |
| `␣` `j` `U` |                                   | `<Action>(FindUsages)`                                          |
| `␣` `j` `m` | `outline::Toggle`                 | `<Action>(FileStructurePopup)`                                  |
| `␣` `j` `n` |                                   | `<Action>(ShowNavBar)`                                          |
| `␣` `j` `D` | `editor::GoToDefinitionSplit`     |                                                                 |
| `␣` `j` `I` | `editor::GoToImplementationSplit` |                                                                 |
|             |                                   |                                                                 |
| `␣` `␣` `k` |                                   | `<Action>(Refactorings.QuickListPopupAction)`                   |
| `␣` `k` `c` |                                   | `<Action>(IntroduceConstant)`                                   |
| `␣` `k` `d` |                                   | `<Action>(SafeDelete)`                                          |
| `␣` `k` `f` |                                   | `<Action>(IntroduceField)`                                      |
| `␣` `k` `i` |                                   | `<Action>(ExtractInterface)`                                    |
| `␣` `k` `l` |                                   | `<Action>(Inline)`                                              |
| `␣` `k` `m` |                                   | `<Action>(ExtractMethod)`                                       |
| `␣` `k` `o` |                                   | `<Action>(Move)`                                                |
| `␣` `k` `p` |                                   | `<Action>(IntroduceParameter)`                                  |
| `␣` `k` `r` | `editor::Rename`                  | `<Action>(RenameElement)`                                       |
| `␣` `k` `R` |                                   | `<Action>(RenameFile)`                                          |
| `␣` `k` `s` |                                   | `<Action>(ChangeSignature)`                                     |
| `␣` `k` `u` |                                   | `<Action>(MembersPullUp)`                                       |
| `␣` `k` `v` |                                   | `<Action>(IntroduceVariable)`                                   |
|             |                                   |                                                                 |
| `␣` `␣` `l` | `workspace::CloseAllDocks`        | `<Action>(HideAllWindows)`                                      |
| `␣` `l` `a` |                                   | `<Action>(ActivateAIAssistantToolWindow)`                       |
| `␣` `l` `A` |                                   | `<Action>(ActivateHTTPClientAuthenticationLogToolWindow)`       |
| `␣` `l` `b` |                                   | `<Action>(ActivateBuildToolWindow)`                             |
| `␣` `l` `B` |                                   | `<Action>(ActivateBookmarksToolWindow)`                         |
| `␣` `l` `d` |                                   | `<Action>(ActivateDebugToolWindow)`                             |
| `␣` `l` `D` |                                   | `<Action>(ActivateDatabaseToolWindow)`                          |
| `␣` `l` `e` | `diagnostics::Deploy`             | `<Action>(ActivateProblemsViewToolWindow)`                      |
| `␣` `l` `E` |                                   | `<Action>(ActivateEndpointsToolWindow)`                         |
| `␣` `l` `f` |                                   | `<Action>(ActivateFindToolWindow)`                              |
| `␣` `l` `p` | `project_panel::ToggleFocus`      | `<Action>(ActivateProjectToolWindow)`                           |
| `␣` `l` `r` |                                   | `<Action>(ActivateRunToolWindow)`                               |
| `␣` `l` `t` | `terminal_panel::ToggleFocus`     | `<Action>(ActivateTerminalToolWindow)`                          |
| `␣` `l` `v` |                                   | `<Action>(ActivateVersionControlToolWindow)`                    |
| `␣` `l` `V` |                                   | `<Action>(ActivatePullRequestsToolWindow)`                      |
| `␣` `l` `c` | `collab_panel::ToggleFocus`       |                                                                 |
|             |                                   |                                                                 |
| `␣` `␣` `v` |                                   | `<Action>(ViewMenu)`                                            |
| `␣` `v` `g` |                                   | `<Action>(ShowGutterIconsSettings)`                             |
| `␣` `v` `i` | `editor::ToggleInlayHints`        | `<Action>(EditorGutterToggleGlobalIndentLines)`                 |
| `␣` `v` `l` | `workspace::ToggleLeftDock`       | `<Action>(EditorGutterToggleGlobalStickyLines)`                 |
| `␣` `v` `n` | `editor::ToggleLineNumbers`       | `<Action>(EditorGutterToggleGlobalLineNumbers)`                 |
| `␣` `v` `w` | `editor::ToggleSoftWrap`          | `<Action>(EditorToggleUseSoftWraps)`                            |
| `␣` `v` `s` |                                   | `<Action>(ViewStatusBar)`                                       |
| `␣` `v` `t` | `theme_selector::Toggle`          | `<Action>(ViewToolButtons)`                                     |
| `␣` `v` `z` |                                   | `<Action>(ChangeIdeScale)`                                      |
| `␣` `v` `r` | `workspace::ToggleRightDock`      |                                                                 |
| `␣` `v` `b` | `workspace::ToggleBottomDock`     |                                                                 |
| `␣` `v` `h` | `zed::Hide`                       |                                                                 |
|             |                                   |                                                                 |
| `␣` `␣` `c` |                                   | `<Action>(CodeCompletion)`                                      |
| `␣` `c` `c` |                                   | `<Action>(CodeCompletion)`                                      |
| `␣` `c` `C` |                                   | `<Action>(SmartTypeCompletion)`                                 |
| `␣` `c` `f` |                                   | `<Action>(ReformatCode)`                                        |
| `␣` `c` `i` |                                   | `<Action>(OptimizeImports)`                                     |
| `␣` `c` `s` |                                   | `<Action>(SurroundWith)`                                        |
| `␣` `c` `t` |                                   | `<Action>(InsertLiveTemplate)`                                  |
| `␣` `c` `u` |                                   | `<Action>(Unwrap)`                                              |
|             |                                   |                                                                 |
| `␣` `␣` `x` | `workspace::CloseWindow`          | `<Action>(CloseProject)`                                        |
| `␣` `x` `n` |                                   | `<Action>(CloseAllNotifications)`                               |
| `␣` `x` `x` | `pane::CloseActiveItem`           | `<Action>(CloseContent)`                                        |
|             |                                   |                                                                 |
| `␣` `␣` `n` |                                   | `<Action>(NewElementSamePlace)`                                 |
| `␣` `n` `d` |                                   | `<Action>(NewDir)`                                              |
| `␣` `n` `f` |                                   | `<Action>(NewFile)`                                             |
| `␣` `n` `g` |                                   | `<Action>(Generate)`                                            |
| `␣` `n` `o` |                                   | `<Action>(OverrideMethods)`                                     |
| `␣` `n` `s` |                                   | `<Action>(NewScratchFile)`                                      |
|             |                                   |                                                                 |
| `␣` `z` `k` | `zed::OpenKeymap`                 |                                                                 |
| `␣` `z` `K` | `zed::OpenDefaultKeymap`          |                                                                 |
| `␣` `z` `s` | `zed::OpenSettings`               |                                                                 |
| `␣` `z` `S` | `zed::OpenDefaultSettings`        |                                                                 |
