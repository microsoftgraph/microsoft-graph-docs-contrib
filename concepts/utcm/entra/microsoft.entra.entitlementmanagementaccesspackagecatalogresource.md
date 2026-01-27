---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Microsoft Entra ID Governance entitlement management access package catalog resource.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | The display name of the resource, such as the application name, group name, or site name. | - |
| Id | Write | String | The unique identifier of the access package catalog resource. | - |
| CatalogId | Write | String | The unique identifier of the access package catalog. | - |
| AddedBy | Write | String | The name of the user or application that first added this resource. This property is read-only. | - |
| AddedOn | Write | String | The date and time when the resource was added, in ISO 8601 format (UTC). For example, midnight UTC on January 1, 2014 is `2014-01-01T00:00:00Z`. This property is read-only. | - |
| Attributes | Write | MSFT_MicrosoftGraphaccesspackageresourceattribute[] | The attributes to be collected from the requestor and sent to the resource application. | - |
| Description | Write | String | The description of the resource. | - |
| IsPendingOnboarding | Write | Boolean | Indicates whether the resource isn't yet available for assignment. This property is read-only. | - |
| OriginId | Write | String | The unique identifier of the resource in the origin system. For a Microsoft Entra group, this is the identifier of the group. | - |
| OriginSystem | Write | String | The type of the resource in the origin system. | - |
| ResourceType | Write | String | The type of the resource. | - |
| Url | Write | String | A unique resource locator for the resource, such as the URL for signing a user into an application. | - |
| Ensure | Write | String | Specifies whether the catalog resource should exist or not. `Present` ensures the resource exists; `Absent` ensures the resource is removed. | `Present`, `Absent` |

### MSFT_MicrosoftGraphaccesspackageresourceattribute

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AttributeDestination | Write | MSFT_MicrosoftGraphaccesspackageresourceattributedestination | Information about how to set the attribute. Currently uses the **accessPackageUserDirectoryAttributeStore** object type. | - |
| AttributeName | Write | String | The name of the attribute in the end system. | - |
| AttributeSource | Write | MSFT_MicrosoftGraphaccesspackageresourceattributesource | Information about how to populate the attribute value when an **accessPackageAssignmentRequest** is being fulfilled. Currently uses the **accessPackageResourceAttributeQuestion** object type. | - |
| Id | Write | String | Id of the access package resource attribute. | - |
| IsEditable | Write | Boolean | Specifies whether or not an existing attribute value can be edited by the requester. | - |
| IsPersistedOnAssignmentRemoval | Write | Boolean | Specifies whether the attribute will remain in the end system after an assignment ends. | - |

### MSFT_MicrosoftGraphaccesspackageresourceattributedestination

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| odataType | Write | String | Type of the access package resource attribute destination. | `#microsoft.graph.accessPackageUserDirectoryAttributeStore` |

### MSFT_MicrosoftGraphaccesspackageresourceattributesource

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| odataType | Write | String | Type of the access package resource attribute source. | `#microsoft.graph.accessPackageResourceAttributeQuestion` |
| Question | Write | MSFT_MicrosoftGraphaccessPackageResourceAttributeQuestion | The question asked to get the value of the attribute. | - |

### MSFT_MicrosoftGraphaccessPackageResourceAttributeQuestion

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| odataType | Write | String | Type of the access package resource attribute question. | `#microsoft.graph.accessPackageTextInputQuestion`, `#microsoft.graph.accessPackageMultipleChoiceQuestion` |
| Id | Write | String | The unique identifier of the access package resource attribute question. | - |
| IsRequired | Write | Boolean | Indicates whether the requestor is required to supply an answer or not. | - |
| IsSingleLine | Write | Boolean | Indicates whether the answer is in single or multiple line formats. | - |
| RegexPattern | Write | String | This is the regex pattern that the corresponding text answer must follow. | - |
| Sequence | Write | UInt32 | Relative position of this question when displaying a list of questions to the requestor. | - |
| QuestionText | Write | MSFT_MicrosoftGraphaccessPackageLocalizedContent | The text of the question to show to the requestor. | - |
| AllowsMultipleSelection | Write | Boolean | Indicates whether requestor can select multiple choices as their answer. | - |
| Choices | Write | MSFT_MicrosoftGraphaccessPackageAnswerChoice[] | List of answer choices. | - |

### MSFT_MicrosoftGraphaccessPackageLocalizedContent

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DefaultText | Write | String | The fallback string, which is used when a requested localization isn't available. Required. | - |
| LocalizedTexts | Write | MSFT_MicrosoftGraphaccessPackageLocalizedText[] | Content represented in a format for a specific locale. | - |

### MSFT_MicrosoftGraphaccessPackageLocalizedText

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Text | Write | String | The text in the specific language. Required. | - |
| LanguageCode | Write | String | The ISO code for the intended language. Required. | - |

### MSFT_MicrosoftGraphaccessPackageAnswerChoice

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| ActualValue | Write | String | The actual value of the selected choice. This is typically a string value that is understandable by applications. Required. | - |
| displayValue | Write | MSFT_MicrosoftGraphaccessPackageLocalizedContent | The localized display values shown to the requestor and approvers. Required. | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Identity Governance Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | EntitlementManagement.Read.All |
| Update    | EntitlementManagement.ReadWrite.All |



