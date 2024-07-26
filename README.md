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
| `j` `⌘⌃`  | editor::GoToHunk                   | NextDiff              |
| `k` `⌘⌃`  | editor::GoToPrevHunk               | PreviousDiff          |
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
| `␣␣a` |  | `osmedile.intellij.stringmanip.SwitchCasePopup` |
| `␣ac` | `editor::ConvertToLowerCamelCase` | `StringManipulation.ToCamelCase` |
| `␣aC` |  | `osmedile.intellij.stringmanip.WordsCapitalizeAction` |
| `␣ak` | `editor::ConvertToKebabCase` | `StringManipulation.ToKebabCase` |
| `␣al` | `editor::ConvertToLowerCase` | `osmedile.intellij.stringmanip.ToLowerCaseAction` |
| `␣ap` | `editor::ConvertToUpperCamelCase` | `StringManipulation.ToPascalCase` |
| `␣ar` |  | `osmedile.intellij.stringmanip.SwapCaseAction` |
| `␣as` | `editor::ConvertToSnakeCase` | `StringManipulation.ToSnakeCase` |
| `␣aS` |  | `StringManipulation.ToScreamingSnakeCase` |
| `␣at` | `editor::ConvertToTitleCase` | `osmedile.intellij.stringmanip.ToCamelCaseAction` |
| `␣au` | `editor::ConvertToUpperCase` | `osmedile.intellij.stringmanip.ToUpperCaseAction` |
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
| `␣␣d` |  | `QuickJavaDoc` |
| `␣dd` |  | `QuickJavaDoc` |
| `␣de` |  | `ShowErrorDescription` |
| `␣dh` | `editor::Hover` | `ShowHoverInfo` |
| `␣di` |  | `QuickImplementations` |
| `␣dp` |  | `ParameterInfo` |
| | | |
| `␣␣e` | `task::Spawn` | `ChooseRunConfiguration` |
| `␣ed` |  | `Debug` |
| `␣eD` |  | `DebugClass` |
| `␣ee` |  | `editRunConfigurations` |
| `␣er` |  | `Run` |
| `␣eR` |  | `RunClass` |
| `␣ex` |  | `Stop` |
| | | |
| `␣␣E` |  | `ChooseDebugConfiguration` |
| | | |
| `␣␣f` |  | `SearchEverywhere` |
| `␣fa` | `command_palette::Toggle` | `GotoAction` |
| `␣fc` |  | `GotoClass` |
| `␣ff` | `file_finder::Toggle` | `GotoFile` |
| `␣fj` | `file_finder::Toggle` | `RecentFiles` |
| `␣fk` |  | `RecentChangedFiles` |
| `␣fl` |  | `RecentLocations` |
| `␣fp` | `projects::OpenRecent` | `ManageRecentProjects` |
| `␣fs` |  | `GotoSymbol` |
| `␣fS` |  | `Scratch.ShowFilesPopup` |
| `␣ft` | `pane::DeploySearch` | `FindInPath` |
| | | |
| `␣␣j` |  | `EditorPopupMenu.GoTo` |
| `␣jd` | `editor::GoToDefinition` | `GotoDeclaration` |
| `␣jD` | `editor::GoToDefinitionSplit` |  |
| `␣ji` | `editor::GoToImplementation` | `GotoImplementation` |
| `␣jI` | `editor::GoToImplementationSplit` |  |
| `␣jm` | `outline::Toggle` | `FileStructurePopup` |
| `␣jn` |  | `ShowNavBar` |
| `␣jo` |  | `RevealGroup` |
| `␣jr` |  | `GotoRelated` |
| `␣js` |  | `GotoSuperMethod` |
| `␣jt` | `editor::GoToTypeDefinition` | `GotoTypeDeclaration` |
| `␣jT` | `editor::GoToTypeDefinitionSplit` | `GotoTest` |
| `␣ju` | `editor::FindAllReferences` | `ShowUsages` |
| `␣jU` |  | `FindUsages` |
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
| `␣lc` | `collab_panel::ToggleFocus` |  |
| `␣ld` |  | `ActivateDebugToolWindow` |
| `␣lD` |  | `ActivateDatabaseToolWindow` |
| `␣le` | `diagnostics::Deploy` | `ActivateProblemsViewToolWindow` |
| `␣lf` |  | `ActivateFindToolWindow` |
| `␣ln` |  | `ActivateNotificationsToolWindow` |
| `␣lp` | `project_panel::ToggleFocus` | `ActivateProjectToolWindow` |
| `␣lr` |  | `ActivateRunToolWindow` |
| `␣ls` |  | `ActivateServicesToolWindow` |
| `␣lt` | `terminal_panel::ToggleFocus` | `ActivateTerminalToolWindow` |
| `␣lu` |  | `ActivatePullRequestsToolWindow` |
| `␣lv` |  | `ActivateVersionControlToolWindow` |
| | | |
| `␣␣n` |  | `NewElementSamePlace` |
| `␣nd` |  | `NewDir` |
| `␣nf` |  | `NewFile` |
| `␣ng` |  | `Generate` |
| `␣no` |  | `OverrideMethods` |
| `␣ns` |  | `NewScratchFile` |
| | | |
| `␣␣r` |  | `Replace` |
| `␣rf` |  | `ReplaceInPath` |
| | | |
| `␣␣s` |  | `Vcs.QuickListPopupAction` |
| `␣sa` |  | `ChangesView.AddUnversioned` |
| `␣sb` | `branches::OpenRecent` | `Git.Branches` |
| `␣sB` | `editor::ToggleGitBlame` | `Annotate` |
| `␣sc` |  | `CheckinProject` |
| `␣sC` |  | `Vcs.ToggleAmendCommitMode` |
| `␣sd` |  | `Compare.SameVersion` |
| `␣sf` |  | `Git.Fetch` |
| `␣sF` |  | `Vcs.Log.ShowAllAffected` |
| `␣sh` |  | `Vcs.ShowTabbedFileHistory` |
| `␣sH` |  | `LocalHistory.ShowHistory` |
| `␣sl` | `editor::RevertSelectedHunks` | `Vcs.RollbackChangedLines` |
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
| `␣␣v` |  | `ViewMenu` |
| `␣vb` | `workspace::ToggleBottomDock` | `ViewToolButtons` |
| `␣vG` |  | `ShowGutterIconsSettings` |
| `␣vh` | `zed::Hide` |  |
| `␣vi` | `editor::ToggleInlayHints` | `EditorGutterToggleGlobalIndentLines` |
| `␣vl` | `workspace::ToggleLeftDock` | `EditorGutterToggleGlobalStickyLines` |
| `␣vn` | `editor::ToggleLineNumbers` | `EditorGutterToggleGlobalLineNumbers` |
| `␣vr` | `workspace::ToggleRightDock` |  |
| `␣vs` |  | `ViewStatusBar` |
| `␣vt` | `editor::ToggleTabBar` |  |
| `␣vT` | `theme_selector::Toggle` | `ConfigureEditorTabs` |
| `␣vw` | `editor::ToggleSoftWrap` | `EditorToggleUseSoftWraps` |
| `␣vz` |  | `ChangeIdeScale` |
| | | |
| `␣␣x` | `workspace::CloseWindow` | `CloseProject` |
| `␣xn` |  | `CloseAllNotifications` |
| `␣xx` | `pane::CloseActiveItem` | `CloseContent` |
| | | |
| `␣␣y` |  | `CopyReferencePopupGroup` |
| `␣ya` |  | `CopyAbsolutePath` |
| `␣yf` |  | `CopyFileName` |
| `␣yl` |  | `CopyPathWithLineNumber` |
| `␣yp` |  | `CopyContentRootPath` |
| `␣yP` |  | `CopyPathFromRepositoryRootProvider` |
| `␣yr` |  | `CopyReference` |
| | | |
| `␣zk` | `zed::OpenKeymap` |  |
| `␣zK` | `zed::OpenDefaultKeymap` |  |
| `␣zs` | `zed::OpenSettings` |  |
| `␣zS` | `zed::OpenDefaultSettings` |  |
