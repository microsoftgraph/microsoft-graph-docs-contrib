---
title: "delegatedAdminRelationshipRequest resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminRelationshipRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminRelationshipRequests](../api/delegatedadminrelationshiprequest-list.md)|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) collection|Get a list of the [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) objects and their properties.|
|[Create delegatedAdminRelationshipRequest](../api/delegatedadminrelationship-post-requests.md)|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md)|Create a new [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) object.|
|[Get delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-get.md)|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md)|Read the properties and relationships of a [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) object.|
|[Update delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-update.md)|[delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md)|Update the properties of a [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) object.|
|[Delete delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-delete.md)|None|Deletes a [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) object.|

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
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
  "id": "String (identifier)",
  "action": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

