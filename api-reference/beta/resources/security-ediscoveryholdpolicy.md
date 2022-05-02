---
title: "ediscoveryHoldPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryHoldPolicy resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [policyBase](../resources/security-policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryHoldPolicies](../api/security-ediscoverycase-list-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|Get a list of the [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects and their properties.|
|[Create ediscoveryHoldPolicy](../api/security-ediscoverycase-post-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Create a new [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Get ediscoveryHoldPolicy](../api/security-ediscoveryholdpolicy-get.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Read the properties and relationships of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Update ediscoveryHoldPolicy](../api/security-ediscoveryholdpolicy-update.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Update the properties of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Delete ediscoveryHoldPolicy](../api/security-ediscoverycase-delete-legalholds.md)|None|Deletes an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[List siteSources](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSource](../api/security-ediscoveryholdpolicy-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new siteSource object.|
|[List userSources](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSource](../api/security-ediscoveryholdpolicy-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new userSource object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|**TODO: Add Description**|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).|
|errors|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description**|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).|
|status|policyStatus|**TODO: Add Description** Inherited from [policyBase](../resources/security-policybase.md).The possible values are: `pending`, `error`, `success`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|**TODO: Add Description**|
|userSources|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryHoldPolicy",
  "baseType": "microsoft.graph.security.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryHoldPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "isEnabled": "Boolean",
  "contentQuery": "String",
  "errors": [
    "String"
  ]
}
```

