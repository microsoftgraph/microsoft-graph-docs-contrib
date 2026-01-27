---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Configuration Custom Policy for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | Admin provided name of the device configuration. | - |
| OmaSettings | Write | MSFT_MicrosoftGraphomaSetting[] | OMA settings. This collection can contain a maximum of 1000 elements. | - |
| Description | Write | String | Admin provided description of the Device Configuration. | - |
| SupportsScopeTags | Write | Boolean | Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. | - |
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

### MSFT_MicrosoftGraphOmaSetting

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Description | Write | String | Description. | - |
| DisplayName | Write | String | Display Name. | - |
| IsEncrypted | Write | Boolean | Indicates whether the value field is encrypted. This property is read-only. | - |
| OmaUri | Write | String | OMA. | - |
| SecretReferenceValueId | Write | String | ReferenceId for looking up secret for decryption. This property is read-only. | - |
| FileName | Write | String | File name associated with the Value property (.cer) | - |
| Value | Write | String | Value. (Base64 encoded string) | - |
| IsReadOnly | Write | Boolean | By setting to true, the CSP (configuration service provider) specified in the OMA-URI will perform a get, instead of set | - |
| odataType | Write | String | The type of the entity. | `#microsoft.graph.omaSettingBase64`, `#microsoft.graph.omaSettingBoolean`, `#microsoft.graph.omaSettingDateTime`, `#microsoft.graph.omaSettingFloatingPoint`, `#microsoft.graph.omaSettingInteger`, `#microsoft.graph.omaSettingString`, `#microsoft.graph.omaSettingStringXml` |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



