---
title: "announcement resource type"
description: "**TODO: Add Description**"
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
---

# announcement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [changeItemBase](../resources/changeitembase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/announcement-list.md)|[announcement](../resources/announcement.md) collection|Get a list of the [announcement](../resources/announcement.md) objects and their properties.|
|[Get](../api/announcement-get.md)|[announcement](../resources/announcement.md)|Read the properties and relationships of an [announcement](../resources/announcement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|announcementDateTime|DateTimeOffset|**TODO: Add Description**|
|changeItemService|changeItemService|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).The possible values are: `accessReviews`, `appProxy`, `audit`, `authenticationsLogins`, `azureADDomainServices`, `b2B`, `b2CConsumerIdentityManagement`, `conditionalAccess`, `deviceAccessManagement`, `deviceRegistrationandManagement`, `directoryManagement`, `enterpriseApps`, `entitlementManagement`, `groupManagement`, `identityProtection`, `internetAccess`, `lifecycleWorkflows`, `linkedIn`, `managedidentitiesforAzureresources`, `mfA`, `microsoftAuthenticatorApp`, `microsoftIdentityManager`, `msGraph`, `myApps`, `myProfileAccount`, `na`, `o365Groups`, `other`, `privateAccess`, `privilegedIdentityManagement`, `provisioning`, `rbac`, `reporting`, `roles`, `selfServicePasswordReset`, `sovereignClouds`, `termsofUse`, `userAccessManagement`, `userExperienceandManagement`, `userManagement`, `microsoftEntraDomainServices`, `verifiedId`, `unknownFutureValue`.|
|changeItemState|changeItemState|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).The possible values are: `available`, `comingSoon`, `unknownFutureValue`.|
|description|String|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|documentationUrls|String collection|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|impactLink|String|**TODO: Add Description**|
|isCustomerActionRequired|Boolean|**TODO: Add Description**|
|shortDescription|String|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|systemTags|String collection|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|tags|String collection|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|targetDateTime|DateTimeOffset|**TODO: Add Description**|
|title|String|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.announcement",
  "baseType": "microsoft.graph.changeItemBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.announcement",
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
  "description": "String",
  "announcementDateTime": "String (timestamp)",
  "targetDateTime": "String (timestamp)",
  "impactLink": "String",
  "isCustomerActionRequired": "Boolean"
}
```

