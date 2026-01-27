---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Intune Device Configuration Administrative Template Policy for Windows10


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Description** | Write | String | User provided description for the resource object. | |
| **DisplayName** | Key | String | User provided name for the resource object. | |
| **PolicyConfigurationIngestionType** | Write | String | Type of definitions configured for this policy. Possible values are: unknown, custom, builtIn, mixed, unknownFutureValue. | `unknown`, `custom`, `builtIn`, `mixed`, `unknownFutureValue` |
| **Id** | Write | String | The unique identifier for an entity. Read-only. | |
| **DefinitionValues** | Write | GroupPolicyDefinitionValue[] | The list of enabled or disabled group policy definition values for the configuration. | |
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

### GroupPolicyDefinitionValueDefinition

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **CategoryPath** | Write | String | The localized full category path for the policy. | |
| **ClassType** | Write | String | Identifies the type of groups the policy can be applied to. Possible values are: user, machine. | `user`, `machine` |
| **DisplayName** | Write | String | The localized policy name. | |
| **ExplainText** | Write | String | The localized explanation or help text associated with the policy. The default value is empty. | |
| **GroupPolicyCategoryId** | Write | String | The category id of the parent category | |
| **HasRelatedDefinitions** | Write | Boolean | Signifies whether or not there are related definitions to this definition | |
| **MinDeviceCspVersion** | Write | String | Minimum required CSP version for device configuration in this definition | |
| **MinUserCspVersion** | Write | String | Minimum required CSP version for user configuration in this definition | |
| **PolicyType** | Write | String | Specifies the type of group policy. Possible values are: admxBacked, admxIngested. | `admxBacked`, `admxIngested` |
| **SupportedOn** | Write | String | Localized string used to specify what operating system or application version is affected by the policy. | |
| **Id** | Write | String | The unique identifier for an entity. Read-only. | |

### GroupPolicyDefinitionValue

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **ConfigurationType** | Write | String | Specifies how the value should be configured. This can be either as a Policy or as a Preference. Possible values are: policy, preference. | `policy`, `preference` |
| **Enabled** | Write | Boolean | Enables or disables the associated group policy definition. | |
| **Id** | Write | String | The unique identifier for an entity. Read-only. | |
| **Definition** | Write | GroupPolicyDefinitionValueDefinition | The associated group policy definition with the value. Read-Only. | |
| **PresentationValues** | Write | GroupPolicyDefinitionValuePresentationValue[] | The associated group policy presentation values with the definition value. | |

### GroupPolicyDefinitionValuePresentationValue

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **BooleanValue** | Write | Boolean | A value for the associated presentation. | |
| **DecimalValue** | Write | UInt64 | A value for the associated presentation. | |
| **StringValue** | Write | String | A value for the associated presentation. | |
| **KeyValuePairValues** | Write | GroupPolicyDefinitionValuePresentationValueKeyValuePair[] | A list of pairs for the associated presentation. | |
| **StringValues** | Write | StringArray[] | A list of pairs for the associated presentation. | |
| **Id** | Write | String | The unique identifier for an entity. Read-only. | |
| **PresentationDefinitionId** | Write | String | The unique identifier for presentation definition. Read-only. | |
| **PresentationDefinitionLabel** | Write | String | The label of the presentation definition. Read-only. | |
| **odataType** | Write | String | A value for the associated presentation. | `#microsoft.graph.groupPolicyPresentationValueBoolean`, `#microsoft.graph.groupPolicyPresentationValueDecimal`, `#microsoft.graph.groupPolicyPresentationValueList`, `#microsoft.graph.groupPolicyPresentationValueLongDecimal`, `#microsoft.graph.groupPolicyPresentationValueMultiText`, `#microsoft.graph.groupPolicyPresentationValueText` |

### GroupPolicyDefinitionValuePresentationValueKeyValuePair

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Value** | Write | String | Value for this key-value pair. | |
| **Name** | Write | String | Name for this key-value pair. | |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



