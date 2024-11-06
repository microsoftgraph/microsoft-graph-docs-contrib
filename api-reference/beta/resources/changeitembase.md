---
title: "changeItemBase resource type"
description: "Represents either a planned change or planned new feature in Microsoft Entra."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Product changes
---

# changeItemBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents either a planned change or planned new feature in Microsoft Entra. This resource is an abstract type from which the following resources inherit:

- [announcement](../resources/announcement.md)
- [roadmap](../resources/roadmap.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-productchanges.md)|[changeItemBase](../resources/changeitembase.md) collection|Get a list of the [changeItemBase](../resources/changeitembase.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeItemService|changeItemService|Specifies the Microsoft Entra service name to which this item belongs. The possible values are: `accessReviews`, `appProxy`, `audit`, `authenticationsLogins`, `azureADDomainServices`, `b2B`, `b2CConsumerIdentityManagement`, `conditionalAccess`, `deviceAccessManagement`, `deviceRegistrationandManagement`, `directoryManagement`, `enterpriseApps`, `entitlementManagement`, `groupManagement`, `identityProtection`, `internetAccess`, `lifecycleWorkflows`, `linkedIn`, `managedidentitiesforAzureresources`, `mfA`, `microsoftAuthenticatorApp`, `microsoftIdentityManager`, `msGraph`, `myApps`, `myProfileAccount`, `na`, `o365Groups`, `other`, `privateAccess`, `privilegedIdentityManagement`, `provisioning`, `rbac`, `reporting`, `roles`, `selfServicePasswordReset`, `sovereignClouds`, `termsofUse`, `userAccessManagement`, `userExperienceandManagement`, `userManagement`, `microsoftEntraDomainServices`, `verifiedId`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|changeItemState|changeItemState|Indicates whether this feature or change was released or if it's an upcoming release. The possible values are: `available`, `comingSoon`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|description|String|Description of the new feature or change announcement. Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|documentationUrls|String collection|Link to the feature or change documentation. Supports `$filter` (`any` with `eq`).|
|id|String|Unique identifier for the new feature or change announcement. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|shortDescription|String|A short description of the feature or change. Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|systemTags|String collection|Microsoft Entra-specific tags. Example values: *Top announcement* - `entra_roadmap_highlight_product_news`, *New release highlight* - `entra_roadmap_highlight_new_feature`. Supports `$filter` (`any` with `eq`).|
|tags|String collection|Identity and Access Management (IAM) related tags. Example values: *External Identities*, *Reliability and Resilience*. Supports `$filter` (`any` with `eq`).|
|title|String|Title of the feature or change. Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.changeItemBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.changeItemBase",
  "id": "String (identifier)",
  "changeItemState": "String",
  "changeItemService": "String",
  "tags": [
    "String"
  ],
  "systemTags": [
    "String"
  ],
  "documentationUrls": [
    "String"
  ],
  "shortDescription": "String",
  "title": "String",
  "description": "String"
}
```
