---
title: "changeItemBase resource type"
description: "**TODO: Add Description**"
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
---

# changeItemBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents either a planned change or planned new feature in Entra. This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-productchanges.md)|[changeItemBase](../resources/changeitembase.md) collection|Get a list of the [changeItemBase](../resources/changeitembase.md) objects and their properties.|
|[Get](../api/changeitembase-get.md)|[changeItemBase](../resources/changeitembase.md)|Read the properties and relationships of a [changeItemBase](../resources/changeitembase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeItemService|changeItemService|**TODO: Add Description**.The possible values are: `accessReviews`, `appProxy`, `audit`, `authenticationsLogins`, `azureADDomainServices`, `b2B`, `b2CConsumerIdentityManagement`, `conditionalAccess`, `deviceAccessManagement`, `deviceRegistrationandManagement`, `directoryManagement`, `enterpriseApps`, `entitlementManagement`, `groupManagement`, `identityProtection`, `internetAccess`, `lifecycleWorkflows`, `linkedIn`, `managedidentitiesforAzureresources`, `mfA`, `microsoftAuthenticatorApp`, `microsoftIdentityManager`, `msGraph`, `myApps`, `myProfileAccount`, `na`, `o365Groups`, `other`, `privateAccess`, `privilegedIdentityManagement`, `provisioning`, `rbac`, `reporting`, `roles`, `selfServicePasswordReset`, `sovereignClouds`, `termsofUse`, `userAccessManagement`, `userExperienceandManagement`, `userManagement`, `microsoftEntraDomainServices`, `verifiedId`, `unknownFutureValue`.|
|changeItemState|changeItemState|**TODO: Add Description**.The possible values are: `available`, `comingSoon`, `unknownFutureValue`.|
|description|String|**TODO: Add Description**|
|documentationUrls|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|shortDescription|String|**TODO: Add Description**|
|systemTags|String collection|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|
|title|String|**TODO: Add Description**|

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

