---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an Intune Endpoint Detection and Response Policy for Windows 10.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Write | String | Identity of the endpoint detection and response policy for Windows 10. | - |
| DisplayName | Key | String | Display name of the endpoint detection and response policy for Windows 10. | - |
| Description | Write | String | Description of the endpoint detection and response policy for Windows 10. | - |
| Assignments | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Assignments of the endpoint detection and response policy for Windows 10. | - |
| SampleSharing | Write | String | Return or set Windows Defender Advanced Threat Protection Sample Sharing configuration parameter: 0 - none, 1 - All | `0`, `1` |
| ConfigurationType | Write | String | Microsoft Defender for Endpoint endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. | `AutoFromConnector`, `Onboard`, `Offboard` |
| ConfigurationBlob | Write | String | Set Windows Defender Advanced Threat Protection Onboarding blob and initiate onboarding to Windows Defender Advanced Threat Protection | - |
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



