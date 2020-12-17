---
title: "case resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# case resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cases](../api/case-list.md)|[case](../resources/case.md) collection|Get a list of the [case](../resources/case.md) objects and their properties.|
|[Create case](../api/case-create.md)|[case](../resources/case.md)|Create a new [case](../resources/case.md) object.|
|[Get case](../api/case-get.md)|[case](../resources/case.md)|Read the properties and relationships of a [case](../resources/case.md) object.|
|[Update case](../api/case-update.md)|[case](../resources/case.md)|Update the properties of a [case](../resources/case.md) object.|
|[Delete case](../api/case-delete.md)|None|Deletes a [case](../resources/case.md) object.|
|[close](../api/case-close.md)|None|**TODO: Add Description**|
|[reopen](../api/case-reopen.md)|None|**TODO: Add Description**|
|[List custodians](../api/case-list-custodians.md)|[custodian](../resources/custodian.md) collection|Get the custodian resources from the custodians navigation property.|
|[Create custodian](../api/case-post-custodians.md)|[custodian](../resources/custodian.md)|Create a new custodian object.|
|[List legalholds](../api/case-list-legalholds.md)|[legalhold](../resources/legalhold.md) collection|Get the legalhold resources from the legalholds navigation property.|
|[Create legalhold](../api/case-post-legalholds.md)|[legalhold](../resources/legalhold.md)|Create a new legalhold object.|
|[List operations](../api/case-list-operations.md)|[caseOperation](../resources/caseoperation.md) collection|Get the caseOperation resources from the operations navigation property.|
|[Create caseOperation](../api/case-post-operations.md)|[caseOperation](../resources/caseoperation.md)|Create a new caseOperation object.|
|[List reviewSets](../api/case-list-reviewsets.md)|[reviewSet](../resources/reviewset.md) collection|Get the reviewSet resources from the reviewSets navigation property.|
|[Create reviewSet](../api/case-post-reviewsets.md)|[reviewSet](../resources/reviewset.md)|Create a new reviewSet object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|closedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|closedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|caseStatus|**TODO: Add Description**. Possible values are: `unknown`, `active`, `pendingDelete`, `closing`, `closed`, `closedWithError`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|custodians|[custodian](../resources/custodian.md) collection|**TODO: Add Description**|
|legalholds|[legalhold](../resources/legalhold.md) collection|**TODO: Add Description**|
|operations|[caseOperation](../resources/caseoperation.md) collection|**TODO: Add Description**|
|reviewSets|[reviewSet](../resources/reviewset.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.case",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.case",
  "id": "String (identifier)",
  "description": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

