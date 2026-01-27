---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Configuration Email Profile Policy for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AccountName | Write | String | Account name. | - |
| DurationOfEmailToSync | Write | String | Duration of email to sync. Possible values are: userDefined, oneDay, threeDays, oneWeek, twoWeeks, oneMonth, unlimited. | `userDefined`, `oneDay`, `threeDays`, `oneWeek`, `twoWeeks`, `oneMonth`, `unlimited` |
| EmailAddressSource | Write | String | Email attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: userPrincipalName, primarySmtpAddress. | `userPrincipalName`, `primarySmtpAddress` |
| EmailSyncSchedule | Write | String | Email sync schedule. Possible values are: userDefined, asMessagesArrive, manual, fifteenMinutes, thirtyMinutes, sixtyMinutes, basedOnMyUsage. | `userDefined`, `asMessagesArrive`, `manual`, `fifteenMinutes`, `thirtyMinutes`, `sixtyMinutes`, `basedOnMyUsage` |
| HostName | Write | String | Exchange location that (URL) that the native mail app connects to. | - |
| RequireSsl | Write | Boolean | Indicates whether or not to use SSL. | - |
| SyncCalendar | Write | Boolean | Whether or not to sync the calendar. | - |
| SyncContacts | Write | Boolean | Whether or not to sync contacts. | - |
| SyncTasks | Write | Boolean | Whether or not to sync tasks. | - |
| CustomDomainName | Write | String | Custom domain name value used while generating an email profile before installing on the device. | - |
| UserDomainNameSource | Write | String | UserDomainname attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: fullDomainName, netBiosDomainName. | `fullDomainName`, `netBiosDomainName` |
| UsernameAADSource | Write | String | Name of the AAD field, that will be used to retrieve UserName for email profile. Possible values are: userPrincipalName, primarySmtpAddress, samAccountName. | `userPrincipalName`, `primarySmtpAddress`, `samAccountName` |
| UsernameSource | Write | String | Username attribute that is picked from AAD and injected into this profile before installing on the device. Possible values are: userPrincipalName, primarySmtpAddress. | `userPrincipalName`, `primarySmtpAddress` |
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


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



