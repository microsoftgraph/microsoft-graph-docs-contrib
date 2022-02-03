---
title: "granularAdminRelationshipRequest resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: resourcePageType
---

# granularAdminRelationshipRequest resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List granularAdminRelationshipRequests](../api/granularadminrelationshiprequest-list.md)|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) collection|Get a list of the [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) objects and their properties.|
|[Create granularAdminRelationshipRequest](../api/granularadminrelationship-post-requests.md)|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md)|Create a new [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.|
|[Get granularAdminRelationshipRequest](../api/granularadminrelationshiprequest-get.md)|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md)|Read the properties and relationships of a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.|
|[Update granularAdminRelationshipRequest](../api/granularadminrelationshiprequest-update.md)|[granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md)|Update the properties of a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.|
|[Delete granularAdminRelationshipRequest](../api/granularadminrelationshiprequest-delete.md)|None|Deletes a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularAdminRelationshipRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularAdminRelationshipRequest",
  "id": "String (identifier)",
  "action": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

