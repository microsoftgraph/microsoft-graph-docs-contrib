---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Intune compliance policies for iOs devices.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisplayName** | Key | String | Display name of the iOS device compliance policy. | |
| **Description** | Write | String | Description of the iOS device compliance policy. | |
| **Assignments** | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Assignments of the Intune Policy. | |
| **PasscodeBlockSimple** | Write | Boolean | PasscodeBlockSimple of the iOS device compliance policy. | |
| **PasscodeExpirationDays** | Write | UInt32 | PasscodeExpirationDays of the iOS device compliance policy. | |
| **PasscodeMinimumLength** | Write | UInt32 | PasscodeMinimumLength of the iOS device compliance policy. | |
| **PasscodeMinutesOfInactivityBeforeLock** | Write | UInt32 | PasscodeMinutesOfInactivityBeforeLock of the iOS device compliance policy. | |
| **PasscodeMinutesOfInactivityBeforeScreenTimeout** | Write | UInt32 | Minutes of inactivity before the screen times out. | |
| **PasscodePreviousPasscodeBlockCount** | Write | UInt32 | PasscodePreviousPasscodeBlockCount of the iOS device compliance policy. | |
| **PasscodeMinimumCharacterSetCount** | Write | UInt32 | PasscodeMinimumCharacterSetCount of the iOS device compliance policy. | |
| **PasscodeRequiredType** | Write | String | PasscodeRequiredType of the iOS device compliance policy. | `deviceDefault`, `alphanumeric`, `numeric` |
| **PasscodeRequired** | Write | Boolean | PasscodeRequired of the iOS device compliance policy. | |
| **OsMinimumVersion** | Write | String | OsMinimumVersion of the iOS device compliance policy. | |
| **OsMaximumVersion** | Write | String | OsMaximumVersion of the iOS device compliance policy. | |
| **OsMinimumBuildVersion** | Write | String | Minimum IOS build version. | |
| **OsMaximumBuildVersion** | Write | String | Maximum IOS build version. | |
| **SecurityBlockJailbrokenDevices** | Write | Boolean | SecurityBlockJailbrokenDevices of the iOS device compliance policy. | |
| **DeviceThreatProtectionEnabled** | Write | Boolean | DeviceThreatProtectionEnabled of the iOS device compliance policy. | |
| **DeviceThreatProtectionRequiredSecurityLevel** | Write | String | Require Mobile Threat Protection minimum risk level to report noncompliance. | `unavailable`, `secured`, `low`, `medium`, `high`, `notSet` |
| **AdvancedThreatProtectionRequiredSecurityLevel** | Write | String | MDATP Require Mobile Threat Protection minimum risk level to report noncompliance. | `unavailable`, `secured`, `low`, `medium`, `high`, `notSet` |
| **ManagedEmailProfileRequired** | Write | Boolean | ManagedEmailProfileRequired of the iOS device compliance policy. | |
| **RestrictedApps** | Write | MSFT_appListItem[] | Credentials of the Intune Admin | |
| **Ensure** | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_DeviceManagementConfigurationPolicyAssignments

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **dataType** | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| **deviceAndAppManagementAssignmentFilterType** | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| **deviceAndAppManagementAssignmentFilterId** | Write | String | The Id of the filter for the target assignment. | |
| **groupId** | Write | String | The group Id that is the target of the assignment. | |
| **groupDisplayName** | Write | String | The group Display Name that is the target of the assignment. | |
| **collectionId** | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | |

### MSFT_appListItem

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **name** | Write | String | The application name. | |
| **publisher** | Write | String | The publisher of the application. | |
| **appStoreUrl** | Write | String | The Store URL of the application. | |
| **appId** | Write | String | The application or bundle identifier of the application. | |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



