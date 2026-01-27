---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Configuration Defender For Endpoint Onboarding Policy for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AdvancedThreatProtectionAutoPopulateOnboardingBlob | Write | Boolean | Auto populate onboarding blob programmatically from Advanced Threat protection service | - |
| AdvancedThreatProtectionOffboardingBlob | Write | String | Windows Defender AdvancedThreatProtection Offboarding Blob. | - |
| AdvancedThreatProtectionOffboardingFilename | Write | String | Name of the file from which AdvancedThreatProtectionOffboardingBlob was obtained. | - |
| AdvancedThreatProtectionOnboardingBlob | Write | String | Windows Defender AdvancedThreatProtection Onboarding Blob. | - |
| AdvancedThreatProtectionOnboardingFilename | Write | String | Name of the file from which AdvancedThreatProtectionOnboardingBlob was obtained. | - |
| AllowSampleSharing | Write | Boolean | Windows Defender AdvancedThreatProtection 'Allow Sample Sharing' Rule | - |
| EnableExpeditedTelemetryReporting | Write | Boolean | Expedite Windows Defender Advanced Threat Protection telemetry reporting frequency. | - |
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



