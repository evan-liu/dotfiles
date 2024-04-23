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

| Key | Zed | IdeaVim |
| --- | --- | --- |
| `␣␣y` |  | `CopyReferencePopupGroup` |
| | | |
| `␣␣e` | `task::Spawn` | `ChooseRunConfiguration` |
| `␣ee` |  | `editRunConfigurations` |
| `␣ed` |  | `Debug` |
| `␣eD` |  | `DebugClass` |
| `␣er` |  | `Run` |
| `␣eR` |  | `RunClass` |
| `␣ex` |  | `Stop` |
| | | |
| `␣␣E` |  | `ChooseDebugConfiguration` |
| | | |
| `␣␣f` |  | `SearchEverywhere` |
| `␣fe` |  | `<Plug>(easymotion-s)` |
| `␣fc` |  | `GotoClass` |
| `␣ff` | `file_finder::Toggle` | `GotoFile` |
| `␣fs` |  | `GotoSymbol` |
| `␣fa` | `command_palette::Toggle` | `GotoAction` |
| `␣ft` | `pane::DeploySearch` | `FindInPath` |
| `␣fS` |  | `Scratch.ShowFilesPopup` |
| `␣fj` |  | `RecentFiles` |
| `␣fk` |  | `RecentChangedFiles` |
| `␣fl` |  | `RecentLocations` |
| `␣fp` | `projects::OpenRecent` | `ManageRecentProjects` |
| | | |
| `␣␣r` |  | `Replace` |
| `␣rf` |  | `ReplaceInPath` |
| | | |
| `␣␣d` |  | `QuickJavaDoc` |
| `␣di` |  | `QuickImplementations` |
| `␣de` |  | `ShowErrorDescription` |
| `␣dd` |  | `QuickJavaDoc` |
| `␣dp` |  | `ParameterInfo` |
| `␣dh` | `editor::Hover` | `ShowHoverInfo` |
| | | |
| `␣␣s` |  | `Vcs.QuickListPopupAction` |
| `␣sa` |  | `Vcs.ToggleAmendCommitMode` |
| `␣sb` | `branches::OpenRecent` | `Git.Branches` |
| `␣sB` | `editor::ToggleGitBlame` | `Annotate` |
| `␣sc` |  | `CheckinProject` |
| `␣sd` |  | `Compare.SameVersion` |
| `␣sf` |  | `Git.Fetch` |
| `␣sF` |  | `Vcs.Log.ShowAllAffected` |
| `␣sh` |  | `Vcs.ShowTabbedFileHistory` |
| `␣sH` |  | `LocalHistory.ShowHistory` |
| `␣sl` |  | `Vcs.RollbackChangedLines` |
| `␣sm` |  | `Vcs.ShowMessageHistory` |
| `␣sn` |  | `Git.CreateNewBranch` |
| `␣sN` |  | `Github.Create.Pull.Request` |
| `␣sp` |  | `Vcs.Push` |
| `␣sr` |  | `ChangesView.Revert` |
| `␣ss` |  | `Git.Stash` |
| `␣sS` |  | `Git.Unstash` |
| `␣st` |  | `Git.Tag` |
| `␣su` |  | `Vcs.UpdateProject` |
| | | |
| `␣␣a` |  | `osmedile.intellij.stringmanip.SwitchCasePopup` |
| `␣ac` |  | `StringManipulation.ToCamelCase` |
| `␣as` |  | `StringManipulation.ToSnakeCase` |
| `␣ak` |  | `StringManipulation.ToKebabCase` |
| `␣ap` |  | `StringManipulation.ToPascalCase` |
| `␣al` |  | `osmedile.intellij.stringmanip.ToLowerCaseAction` |
| `␣au` |  | `osmedile.intellij.stringmanip.ToUpperCaseAction` |
| `␣ar` |  | `osmedile.intellij.stringmanip.SwapCaseAction` |
| `␣aC` |  | `osmedile.intellij.stringmanip.WordsCapitalizeAction` |
| `␣aS` |  | `StringManipulation.ToScreamingSnakeCase` |
| | | |
| `␣␣j` |  | `EditorPopupMenu.GoTo` |
| `␣jd` | `editor::GoToDefinition` | `GotoDeclaration` |
| `␣jt` | `editor::GoToTypeDefinition` | `GotoTypeDeclaration` |
| `␣jT` | `editor::GoToTypeDefinitionSplit` | `GotoTest` |
| `␣ji` | `editor::GoToImplementation` | `GotoImplementation` |
| `␣jo` |  | `RevealGroup` |
| `␣jr` |  | `GotoRelated` |
| `␣js` |  | `GotoSuperMethod` |
| `␣ju` | `editor::FindAllReferences` | `ShowUsages` |
| `␣jU` |  | `FindUsages` |
| `␣jm` | `outline::Toggle` | `FileStructurePopup` |
| `␣jn` |  | `ShowNavBar` |
| `␣jD` | `editor::GoToDefinitionSplit` |  |
| `␣jI` | `editor::GoToImplementationSplit` |  |
| | | |
| `␣␣k` |  | `Refactorings.QuickListPopupAction` |
| `␣kc` |  | `IntroduceConstant` |
| `␣kd` |  | `SafeDelete` |
| `␣kf` |  | `IntroduceField` |
| `␣ki` |  | `ExtractInterface` |
| `␣kl` |  | `Inline` |
| `␣km` |  | `ExtractMethod` |
| `␣ko` |  | `Move` |
| `␣kp` |  | `IntroduceParameter` |
| `␣kr` | `editor::Rename` | `RenameElement` |
| `␣kR` |  | `RenameFile` |
| `␣ks` |  | `ChangeSignature` |
| `␣ku` |  | `MembersPullUp` |
| `␣kv` |  | `IntroduceVariable` |
| | | |
| `␣␣l` | `workspace::CloseAllDocks` | `HideAllWindows` |
| `␣la` |  | `ActivateAIAssistantToolWindow` |
| `␣lA` |  | `ActivateHTTPClientAuthenticationLogToolWindow` |
| `␣lb` |  | `ActivateBuildToolWindow` |
| `␣lB` |  | `ActivateBookmarksToolWindow` |
| `␣ld` |  | `ActivateDebugToolWindow` |
| `␣lD` |  | `ActivateDatabaseToolWindow` |
| `␣le` | `diagnostics::Deploy` | `ActivateProblemsViewToolWindow` |
| `␣lE` |  | `ActivateEndpointsToolWindow` |
| `␣lf` |  | `ActivateFindToolWindow` |
| `␣lp` | `project_panel::ToggleFocus` | `ActivateProjectToolWindow` |
| `␣lr` |  | `ActivateRunToolWindow` |
| `␣lt` | `terminal_panel::ToggleFocus` | `ActivateTerminalToolWindow` |
| `␣lv` |  | `ActivateVersionControlToolWindow` |
| `␣lV` |  | `ActivatePullRequestsToolWindow` |
| `␣lc` | `collab_panel::ToggleFocus` |  |
| | | |
| `␣␣v` |  | `ViewMenu` |
| `␣vg` |  | `ShowGutterIconsSettings` |
| `␣vi` | `editor::ToggleInlayHints` | `EditorGutterToggleGlobalIndentLines` |
| `␣vl` | `workspace::ToggleLeftDock` | `EditorGutterToggleGlobalStickyLines` |
| `␣vn` | `editor::ToggleLineNumbers` | `EditorGutterToggleGlobalLineNumbers` |
| `␣vw` | `editor::ToggleSoftWrap` | `EditorToggleUseSoftWraps` |
| `␣vs` |  | `ViewStatusBar` |
| `␣vt` | `theme_selector::Toggle` | `ViewToolButtons` |
| `␣vz` |  | `ChangeIdeScale` |
| `␣vr` | `workspace::ToggleRightDock` |  |
| `␣vb` | `workspace::ToggleBottomDock` |  |
| `␣vh` | `zed::Hide` |  |
| | | |
| `␣␣c` | `editor::ShowCompletions` | `CodeCompletion` |
| `␣cc` | `editor::ShowCompletions` | `CodeCompletion` |
| `␣cC` |  | `SmartTypeCompletion` |
| `␣cf` |  | `ReformatCode` |
| `␣ci` |  | `OptimizeImports` |
| `␣cs` |  | `SurroundWith` |
| `␣ct` |  | `InsertLiveTemplate` |
| `␣cu` |  | `Unwrap` |
| | | |
| `␣␣x` | `workspace::CloseWindow` | `CloseProject` |
| `␣xn` |  | `CloseAllNotifications` |
| `␣xx` | `pane::CloseActiveItem` | `CloseContent` |
| | | |
| `␣␣n` |  | `NewElementSamePlace` |
| `␣nd` |  | `NewDir` |
| `␣nf` |  | `NewFile` |
| `␣ng` |  | `Generate` |
| `␣no` |  | `OverrideMethods` |
| `␣ns` |  | `NewScratchFile` |
| | | |
| `␣zk` | `zed::OpenKeymap` |  |
| `␣zK` | `zed::OpenDefaultKeymap` |  |
| `␣zs` | `zed::OpenSettings` |  |
| `␣zS` | `zed::OpenDefaultSettings` |  |
