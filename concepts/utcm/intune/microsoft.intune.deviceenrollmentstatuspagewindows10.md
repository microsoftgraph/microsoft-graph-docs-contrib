---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Enrollment Status Page Configuration for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisplayName** | Key | String | The display name of the device enrollment configuration | |
| **Id** | Write | String | The unique identifier for an entity. Read-only. | |
| **Description** | Write | String | The description of the device enrollment configuration | |
| **AllowDeviceResetOnInstallFailure** | Write | Boolean | Allow or block device reset on installation failure | |
| **AllowDeviceUseOnInstallFailure** | Write | Boolean | Allow the user to continue using the device on installation failure | |
| **AllowLogCollectionOnInstallFailure** | Write | Boolean | Allow or block log collection on installation failure | |
| **AllowNonBlockingAppInstallation** | Write | Boolean | Install all required apps as non blocking apps during white glove | |
| **BlockDeviceSetupRetryByUser** | Write | Boolean | Allow the user to retry the setup on installation failure | |
| **CustomErrorMessage** | Write | String | Set custom error message to show upon installation failure | |
| **DisableUserStatusTrackingAfterFirstUser** | Write | Boolean | Only show installation progress for first user post enrollment | |
| **InstallProgressTimeoutInMinutes** | Write | UInt32 | Set installation progress timeout in minutes | |
| **InstallQualityUpdates** | Write | Boolean | Allows quality updates installation during OOBE | |
| **SelectedMobileAppIds** | Write | StringArray[] | Ids of selected applications to track the installation status. When this parameter is used, SelectedMobileAppNames is ignored | |
| **SelectedMobileAppNames** | Write | StringArray[] | Names of selected applications to track the installation status. This parameter is ignored when SelectedMobileAppIds is also specified | |
| **ShowInstallationProgress** | Write | Boolean | Show or hide installation progress to user | |
| **TrackInstallProgressForAutopilotOnly** | Write | Boolean | Only show installation progress for Autopilot enrollment scenarios | |
| **Priority** | Write | UInt32 | Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value. | |
| **Assignments** | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Represents the assignment to the Intune policy. | |
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


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All, DeviceManagementServiceConfig.Read.All, DeviceManagementApps.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementApps.Read.All |



