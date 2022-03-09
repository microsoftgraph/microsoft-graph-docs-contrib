---
title: "delegatedAdminRelationshipRequest resource type"
description: "Represents a request specific to a delegated admin relationship between a partner and customer."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a request specific to a delegated admin relationship between a partner and customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create delegatedAdminRelationshipRequest](../api/delegatedadminrelationship-post-requests.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Create a new **delegatedAdminRelationshipRequest** object.|
|[List delegatedAdminRelationshipRequests](../api/delegatedadminrelationshiprequest-list.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md) collection|Get a list of the **delegatedAdminRelationshipRequest** objects and their properties.|
|[Get delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-get.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Read the properties and relationships of a **delegatedAdminRelationshipRequest** object.|
|[Update delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-update.md)|[delegatedAdminRelationshipRequest](delegatedadminrelationshiprequest.md)|Update the properties of a **delegatedAdminRelationshipRequest** object.|
|[Delete delegatedAdminRelationshipRequest](../api/delegatedadminrelationshiprequest-delete.md)|None|Deletes a **delegatedAdminRelationshipRequest** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|The action to be performed on the delegated admin relationship.|
|createdDateTime|DateTimeOffset|The date and time (ISO 8601) at which the relationship request was created in UTC. This is set by the system and cannot be set by the caller.|
|id|String|The unique identifier of the relationship request. This is set by the system and cannot be set by the caller.|
|lastModifiedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship request was last modified in UTC. This is set by the system and cannot be set by the caller.|
|status|String|The status of the request.|

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

