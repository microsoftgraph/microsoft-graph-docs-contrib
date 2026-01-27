---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Configuration Kiosk Policy for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| EdgeKioskEnablePublicBrowsing | Write | Boolean | Enable public browsing kiosk mode for the Microsoft Edge browser. The Default is false. | - |
| KioskBrowserBlockedUrlExceptions | Write | StringArray[] | Specify URLs that the kiosk browser is allowed to navigate to | - |
| KioskBrowserBlockedURLs | Write | StringArray[] | Specify URLs that the kiosk browsers should not navigate to | - |
| KioskBrowserDefaultUrl | Write | String | Specify the default URL the browser should navigate to on launch. | - |
| KioskBrowserEnableEndSessionButton | Write | Boolean | Enable the kiosk browser's end session button. By default, the end session button is disabled. | - |
| KioskBrowserEnableHomeButton | Write | Boolean | Enable the kiosk browser's home button. By default, the home button is disabled. | - |
| KioskBrowserEnableNavigationButtons | Write | Boolean | Enable the kiosk browser's navigation buttons(forward/back). By default, the navigation buttons are disabled. | - |
| KioskBrowserRestartOnIdleTimeInMinutes | Write | UInt32 | Specify the number of minutes the session is idle until the kiosk browser restarts in a fresh state.  Valid values are 1-1440. Valid values 1 to 1440 | - |
| KioskProfiles | Write | MSFT_MicrosoftGraphwindowsKioskProfile[] | This policy setting allows to define a list of Kiosk profiles for a Kiosk configuration. This collection can contain a maximum of 3 elements. | - |
| WindowsKioskForceUpdateSchedule | Write | MSFT_MicrosoftGraphwindowsKioskForceUpdateSchedule | force update schedule for Kiosk devices. | - |
| Description | Write | String | Admin provided description of the Device Configuration. | - |
| DisplayName | Key | String | Admin provided name of the device configuration. | - |
| Id | Write | String | The unique identifier for an entity. Read-only. | - |
| Assignments | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Represents the assignment to the Intune policy. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_DeviceManagementConfigurationPolicyAssignments

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dataType | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| deviceAndAppManagementAssignmentFilterType | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| deviceAndAppManagementAssignmentFilterId | Write | String | The Id of the filter for the target assignment. | - |
| groupId | Write | String | The group Id that is the target of the assignment. | - |
| groupDisplayName | Write | String | The group Display Name that is the target of the assignment. | - |
| collectionId | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | - |

### MSFT_MicrosoftGraphWindowsKioskProfile

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AppConfiguration | Write | MSFT_MicrosoftGraphWindowsKioskAppConfiguration | The App configuration that will be used for this kiosk configuration. | - |
| ProfileId | Write | String | Key of the entity. | - |
| ProfileName | Write | String | This is a friendly nameused to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned. | - |
| UserAccountsConfiguration | Write | MSFT_MicrosoftGraphWindowsKioskUser[] | The user accounts that will be locked to this kiosk configuration. This collection can contain a maximum of 100 elements. | - |

### MSFT_MicrosoftGraphWindowsKioskAppConfiguration

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AllowAccessToDownloadsFolder | Write | Boolean | This setting allows access to Downloads folder in file explorer. | - |
| Apps | Write | MSFT_MicrosoftGraphWindowsKioskAppBase[] | These are the only Windows Store Apps that will be available to launch from the Start menu. This collection can contain a maximum of 128 elements. | - |
| DisallowDesktopApps | Write | Boolean | This setting indicates that desktop apps are allowed. Default to true. | - |
| ShowTaskBar | Write | Boolean | This setting allows the admin to specify whether the Task Bar is shown or not. | - |
| StartMenuLayoutXml | Write | String | Allows admins to override the default Start layout and prevents the user from changing it.The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format. | - |
| UwpApp | Write | MSFT_MicrosoftGraphWindowsKioskUWPApp | This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode | - |
| Win32App | Write | MSFT_MicrosoftGraphWindowsKioskWin32App | This is the win32 app that will be available to launch use while in Kiosk Mode | - |
| odataType | Write | String | The type of the entity. | `#microsoft.graph.windowsKioskMultipleApps`, `#microsoft.graph.windowsKioskSingleUWPApp`, `#microsoft.graph.windowsKioskSingleWin32App` |

### MSFT_MicrosoftGraphWindowsKioskAppBase

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AppType | Write | String | The app type. Possible values are: unknown, store, desktop, aumId. | `unknown`, `store`, `desktop`, `aumId` |
| AutoLaunch | Write | Boolean | Allow the app to be auto-launched in multi-app kiosk mode | - |
| Name | Write | String | Represents the friendly name of an app | - |
| StartLayoutTileSize | Write | String | The app tile size for the start layout. Possible values are: hidden, small, medium, wide, large. | `hidden`, `small`, `medium`, `wide`, `large` |
| DesktopApplicationId | Write | String | Define the DesktopApplicationID of the app | - |
| DesktopApplicationLinkPath | Write | String | Define the DesktopApplicationLinkPath of the app | - |
| Path | Write | String | Define the path of a desktop app | - |
| AppId | Write | String | This references an Intune App that will be target to the same assignments as Kiosk configuration | - |
| AppUserModelId | Write | String | This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode | - |
| ContainedAppId | Write | String | This references an contained App from an Intune App | - |
| ClassicAppPath | Write | String | This is the classicapppath to be used by v4 Win32 app while in Kiosk Mode | - |
| EdgeKiosk | Write | String | Edge kiosk (url) for Edge kiosk mode | - |
| EdgeKioskIdleTimeoutMinutes | Write | UInt32 | Edge kiosk idle timeout in minutes for Edge kiosk mode. Valid values 0 to 1440 | - |
| EdgeKioskType | Write | String | Edge kiosk type for Edge kiosk mode. Possible values are: publicBrowsing, fullScreen. | `publicBrowsing`, `fullScreen` |
| EdgeNoFirstRun | Write | Boolean | Edge first run flag for Edge kiosk mode | - |
| odataType | Write | String | The type of the entity. | `#microsoft.graph.windowsKioskDesktopApp`, `#microsoft.graph.windowsKioskUWPApp`, `#microsoft.graph.windowsKioskWin32App` |

### MSFT_MicrosoftGraphWindowsKioskUWPApp

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AppId | Write | String | This references an Intune App that will be target to the same assignments as Kiosk configuration | - |
| AppUserModelId | Write | String | This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode | - |
| ContainedAppId | Write | String | This references an contained App from an Intune App | - |
| AppType | Write | String | The app type. Possible values are: unknown, store, desktop, aumId. | `unknown`, `store`, `desktop`, `aumId` |
| AutoLaunch | Write | Boolean | Allow the app to be auto-launched in multi-app kiosk mode | - |
| Name | Write | String | Represents the friendly name of an app | - |
| StartLayoutTileSize | Write | String | The app tile size for the start layout. Possible values are: hidden, small, medium, wide, large. | `hidden`, `small`, `medium`, `wide`, `large` |
| DesktopApplicationId | Write | String | Define the DesktopApplicationID of the app | - |
| DesktopApplicationLinkPath | Write | String | Define the DesktopApplicationLinkPath of the app | - |
| Path | Write | String | Define the path of a desktop app | - |
| ClassicAppPath | Write | String | This is the classicapppath to be used by v4 Win32 app while in Kiosk Mode | - |
| EdgeKiosk | Write | String | Edge kiosk (url) for Edge kiosk mode | - |
| EdgeKioskIdleTimeoutMinutes | Write | UInt32 | Edge kiosk idle timeout in minutes for Edge kiosk mode. Valid values 0 to 1440 | - |
| EdgeKioskType | Write | String | Edge kiosk type for Edge kiosk mode. Possible values are: publicBrowsing, fullScreen. | `publicBrowsing`, `fullScreen` |
| EdgeNoFirstRun | Write | Boolean | Edge first run flag for Edge kiosk mode | - |
| odataType | Write | String | The type of the entity. | `#microsoft.graph.windowsKioskDesktopApp`, `#microsoft.graph.windowsKioskUWPApp`, `#microsoft.graph.windowsKioskWin32App` |

### MSFT_MicrosoftGraphWindowsKioskWin32App

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| ClassicAppPath | Write | String | This is the classicapppath to be used by v4 Win32 app while in Kiosk Mode | - |
| EdgeKiosk | Write | String | Edge kiosk (url) for Edge kiosk mode | - |
| EdgeKioskIdleTimeoutMinutes | Write | UInt32 | Edge kiosk idle timeout in minutes for Edge kiosk mode. Valid values 0 to 1440 | - |
| EdgeKioskType | Write | String | Edge kiosk type for Edge kiosk mode. Possible values are: publicBrowsing, fullScreen. | `publicBrowsing`, `fullScreen` |
| EdgeNoFirstRun | Write | Boolean | Edge first run flag for Edge kiosk mode | - |
| AppType | Write | String | The app type. Possible values are: unknown, store, desktop, aumId. | `unknown`, `store`, `desktop`, `aumId` |
| AutoLaunch | Write | Boolean | Allow the app to be auto-launched in multi-app kiosk mode | - |
| Name | Write | String | Represents the friendly name of an app | - |
| StartLayoutTileSize | Write | String | The app tile size for the start layout. Possible values are: hidden, small, medium, wide, large. | `hidden`, `small`, `medium`, `wide`, `large` |
| DesktopApplicationId | Write | String | Define the DesktopApplicationID of the app | - |
| DesktopApplicationLinkPath | Write | String | Define the DesktopApplicationLinkPath of the app | - |
| Path | Write | String | Define the path of a desktop app | - |
| AppId | Write | String | This references an Intune App that will be target to the same assignments as Kiosk configuration | - |
| AppUserModelId | Write | String | This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode | - |
| ContainedAppId | Write | String | This references an contained App from an Intune App | - |
| odataType | Write | String | The type of the entity. | `#microsoft.graph.windowsKioskDesktopApp`, `#microsoft.graph.windowsKioskUWPApp`, `#microsoft.graph.windowsKioskWin32App` |

### MSFT_MicrosoftGraphWindowsKioskUser

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| GroupName | Write | String | The name of the AD group that will be locked to this kiosk configuration | - |
| DisplayName | Write | String | The display name of the AzureAD group that will be locked to this kiosk configuration | - |
| GroupId | Write | String | The ID of the AzureAD group that will be locked to this kiosk configuration | - |
| UserId | Write | String | The ID of the AzureAD user that will be locked to this kiosk configuration | - |
| UserPrincipalName | Write | String | The user accounts that will be locked to this kiosk configuration | - |
| UserName | Write | String | The local user that will be locked to this kiosk configuration | - |
| odataType | Write | String | The type of the entity. | `#microsoft.graph.windowsKioskActiveDirectoryGroup`, `#microsoft.graph.windowsKioskAutologon`, `#microsoft.graph.windowsKioskAzureADGroup`, `#microsoft.graph.windowsKioskAzureADUser`, `#microsoft.graph.windowsKioskLocalGroup`, `#microsoft.graph.windowsKioskLocalUser`, `#microsoft.graph.windowsKioskVisitor` |

### MSFT_MicrosoftGraphWindowsKioskForceUpdateSchedule

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DayofMonth | Write | UInt32 | Day of month. Valid values 1 to 31 | - |
| DayofWeek | Write | String | Day of week. Possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. | `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday` |
| Recurrence | Write | String | Recurrence schedule. Possible values are: none, daily, weekly, monthly. | `none`, `daily`, `weekly`, `monthly` |
| RunImmediatelyIfAfterStartDateTime | Write | Boolean | If true, runs the task immediately if StartDateTime is in the past, else, runs at the next recurrence. | - |
| StartDateTime | Write | String | The start time for the force restart. | - |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



