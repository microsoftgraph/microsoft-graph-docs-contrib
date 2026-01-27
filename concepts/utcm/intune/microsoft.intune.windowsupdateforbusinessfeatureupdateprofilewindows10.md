---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Windows Update For Business Feature Update Profile for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The unique identifier for an entity. Read-only. | - |
| DisplayName | Key | String | The display name of the profile. | - |
| Description | Write | String | The description of the profile which is specified by the user. | - |
| FeatureUpdateVersion | Write | String | The feature update version that will be deployed to the devices targeted by this profile. The version could be any supported version for example 1709, 1803 or 1809 and so on. | - |
| InstallFeatureUpdatesOptional | Write | Boolean | If true, the Windows 11 update will become optional | - |
| InstallLatestWindows10OnWindows11IneligibleDevice | Write | Boolean | If true, the latest Microsoft Windows 10 update will be installed on devices ineligible for Microsoft Windows 11. Cannot be changed after creation of the policy. | - |
| RolloutSettings | Write | MSFT_MicrosoftGraphwindowsUpdateRolloutSettings | The windows update rollout settings, including offer start date time, offer end date time, and days between each set of offers. For 'as soon as possible' installation, set this setting to $null or do not configure it. | - |
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

### MSFT_MicrosoftGraphWindowsUpdateRolloutSettings

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| OfferEndDateTimeInUTC | Write | String | The feature update's ending  of release date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z. | - |
| OfferIntervalInDays | Write | UInt32 | The number of day(s) between each set of offers to be set, updated, and displayed for a feature update profile, for example: if OfferStartDateTimeInUTC is 2020-06-09T10:00:00Z, and OfferIntervalInDays is 1, then the next two sets of offers will be made consecutively on 2020-06-10T10:00:00Z (next day at the same specified time) and 2020-06-11T10:00:00Z (next next day at the same specified time) with 1 day in between each set of offers. | - |
| OfferStartDateTimeInUTC | Write | String | The feature update's starting date and time to be set, update, and displayed for a feature Update profile for example: 2020-06-09T10:00:00Z. | - |


## RolloutSettings

The RolloutSettings for this resource have the following constraints and notes: 

* When creating a policy:
    * If only a start date is specified, then the start date must be at least today. 
        * If the desired state date is before the current date, it will be adjusted to the current date.
    * If a start and end date is specified, the start date must be the current date + 2 days, and  
      the end date must be at least one day after the start date.
        * If the start date is before the current date + 2 days, it will be adjusted to this date.
* When updating a policy:
    * If only a start date is specified, then the start date must either be the date from the current   
      configuration or the current date (or later). 
        * If the desired state date is before the current date, it will be adjusted to the current date.
    * If a start and end date is specified, the start date must be the current date + 2 days, and  
      the end date must be at least one day after the start date.
        * If the start date is before the current date + 2 days, it will be adjusted to this date.
* When testing a policy:
    * If the policy is missing and the start and end date are before the current date, it will return true.
    * If the start date is different but before the current start date or time, it will return true.

## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



