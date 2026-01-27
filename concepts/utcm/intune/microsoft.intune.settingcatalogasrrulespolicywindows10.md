---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures a Intune Endpoint Protection Attack Surface Reduction rules policy for a Windows 10 Device.
This resource returns ASR rules created using settings catalog settings.



### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Write | String | Identity of the endpoint protection attack surface protection rules policy for Windows 10. | - |
| DisplayName | Key | String | Display name of the endpoint protection attack surface protection rules policy for Windows 10. | - |
| Description | Write | String | Description of the endpoint protection attack surface protection rules policy for Windows 10. | - |
| Assignments | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Assignments of the endpoint protection. | - |
| AttackSurfaceReductionOnlyExclusions | Write | StringArray[] | Exclude files and paths from attack surface reduction rules | - |
| BlockAbuseOfExploitedVulnerableSignedDrivers | Write | String | This rule prevents an application from writing a vulnerable signed driver to disk. | `off`, `block`, `audit`, `warn` |
| BlockAbuseOfExploitedVulnerableSignedDrivers_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockAdobeReaderFromCreatingChildProcesses | Write | String | This rule prevents attacks by blocking Adobe Reader from creating processes. | `off`, `block`, `audit`, `warn` |
| BlockAdobeReaderFromCreatingChildProcesses_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockAllOfficeApplicationsFromCreatingChildProcesses | Write | String | This rule blocks Office apps from creating child processes. Office apps include Word, Excel, PowerPoint, OneNote, and Access. | `off`, `block`, `audit`, `warn` |
| BlockAllOfficeApplicationsFromCreatingChildProcesses_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions (off: Off, block: Block, audit: Audit, warn: Warn) | - |
| BlockCredentialStealingFromWindowsLocalSecurityAuthoritySubsystem | Write | String | This rule helps prevent credential stealing by locking down Local Security Authority Subsystem Service (LSASS). | `off`, `block`, `audit`, `warn` |
| BlockCredentialStealingFromWindowsLocalSecurityAuthoritySubsystem_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockExecutableContentFromEmailClientAndWebmail | Write | String | This rule blocks the following file types from launching from email opened within the Microsoft Outlook application, or Outlook.com and other popular webmail providers. | `off`, `block`, `audit`, `warn` |
| BlockExecutableContentFromEmailClientAndWebmail_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockExecutableFilesRunningUnlessTheyMeetPrevalenceAgeTrustedListCriterion | Write | String | This rule blocks executable files that don't meet a prevalence, age, or trusted list criteria, such as .exe, .dll, or .scr, from launching. | `off`, `block`, `audit`, `warn` |
| BlockExecutableFilesRunningUnlessTheyMeetPrevalenceAgeTrustedListCriterion_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockExecutionOfPotentiallyObfuscatedScripts | Write | String | This rule detects suspicious properties within an obfuscated script. | `off`, `block`, `audit`, `warn` |
| BlockExecutionOfPotentiallyObfuscatedScripts_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockJavaScriptOrVBScriptFromLaunchingDownloadedExecutableContent | Write | String | This rule prevents scripts from launching potentially malicious downloaded content. | `off`, `block`, `audit`, `warn` |
| BlockJavaScriptOrVBScriptFromLaunchingDownloadedExecutableContent_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockOfficeApplicationsFromCreatingExecutableContent | Write | String | This rule prevents Office apps, including Word, Excel, and PowerPoint, from creating potentially malicious executable content, by blocking malicious code from being written to disk. | `off`, `block`, `audit`, `warn` |
| BlockOfficeApplicationsFromCreatingExecutableContent_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockOfficeApplicationsFromInjectingCodeIntoOtherProcesses | Write | String | This rule blocks code injection attempts from Office apps into other processes. | `off`, `block`, `audit`, `warn` |
| BlockOfficeApplicationsFromInjectingCodeIntoOtherProcesses_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockOfficeCommunicationAppFromCreatingChildProcesses | Write | String | This rule prevents Outlook from creating child processes, while still allowing legitimate Outlook functions. | `off`, `block`, `audit`, `warn` |
| BlockOfficeCommunicationAppFromCreatingChildProcesses_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockPersistenceThroughWMIEventSubscription | Write | String | This rule prevents malware from abusing WMI to attain persistence on a device. | `off`, `block`, `audit`, `warn` |
| BlockProcessCreationsFromPSExecAndWMICommands | Write | String | This rule blocks processes created through PsExec and WMI from running. | `off`, `block`, `audit`, `warn` |
| BlockProcessCreationsFromPSExecAndWMICommands_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockRebootingMachineInSafeMode | Write | String | This rule prevents the execution of commands to restart machines in Safe Mode. | `off`, `block`, `audit`, `warn` |
| BlockRebootingMachineInSafeMode_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockUntrustedUnsignedProcessesThatRunFromUSB | Write | String | With this rule, admins can prevent unsigned or untrusted executable files from running from USB removable drives, including SD cards. | `off`, `block`, `audit`, `warn` |
| BlockUntrustedUnsignedProcessesThatRunFromUSB_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockUseOfCopiedOrImpersonatedSystemTools | Write | String | This rule blocks the use of executable files that are identified as copies of Windows system tools. These files are either duplicates or impostors of the original system tools. | `off`, `block`, `audit`, `warn` |
| BlockUseOfCopiedOrImpersonatedSystemTools_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockWebShellCreationForServers | Write | String | This rule blocks webshell creation for servers. | `off`, `block`, `audit`, `warn` |
| BlockWebshellCreationForServers_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| BlockWin32APICallsFromOfficeMacros | Write | String | This rule prevents VBA macros from calling Win32 APIs. | `off`, `block`, `audit`, `warn` |
| BlockWin32APICallsFromOfficeMacros_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| UseAdvancedProtectionAgainstRansomware | Write | String | This rule provides an extra layer of protection against ransomware. | `off`, `block`, `audit`, `warn` |
| UseAdvancedProtectionAgainstRansomware_ASROnlyPerRuleExclusions | Write | StringArray[] | ASR Only Per Rule Exclusions | - |
| ControlledFolderAccessProtectedFolders | Write | StringArray[] | List of additional folders that need to be protected | - |
| ControlledFolderAccessAllowedApplications | Write | StringArray[] | List of apps that have access to protected folders. | - |
| EnableControlledFolderAccess | Write | String | This rule enables Controlled folder access which protects your data by checking apps against a list of known, trusted apps.values 0:disable, 1:enable, 2:audit | `0`, `1`, `2` |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed | `Present`, `Absent` |

#### MSFT_DeviceManagementConfigurationPolicyAssignments

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dataType | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| deviceAndAppManagementAssignmentFilterType | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| deviceAndAppManagementAssignmentFilterId | Write | String | The Id of the filter for the target assignment. | - |
| groupId | Write | String | The group Id that is the target of the assignment. | - |
| groupDisplayName | Write | String | The group Display Name that is the target of the assignment. | - |
| collectionId | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | - |


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



