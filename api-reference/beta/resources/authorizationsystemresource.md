---
title: "authorizationSystemResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemResources](../api/assignedcomputeinstancedetails-list-accessedstoragebuckets.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get a list of the [authorizationSystemResource](../resources/authorizationsystemresource.md) objects and their properties.|
|[Create authorizationSystemResource](../api/assignedcomputeinstancedetails-post-accessedstoragebuckets.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Create a new [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[Get authorizationSystemResource](../api/authorizationsystemresource-get.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Read the properties and relationships of an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[Update authorizationSystemResource](../api/authorizationsystemresource-update.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Update the properties of an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[Delete authorizationSystemResource](../api/assignedcomputeinstancedetails-delete-accessedstoragebuckets.md)|None|Delete an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[List authorizationSystem](../api/authorizationsystemresource-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/authorizationsystemresource-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/authorizationsystemresource-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|resourceType|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystemResource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

