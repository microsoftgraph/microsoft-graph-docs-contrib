---
title: "userConsentRequest resource type"
description: "A request created by a user to use an app that requires access to organizational data the user is unauthorized to grant consent to themselves."
author: ""
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# userConsentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A userConsentRequest is used for requesting access for an application when the application doesn't have the necessary consent to access organizational data it needs. 

Inherits from [request](../resources/request.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userConsentRequests](../api/userconsentrequest-list.md)|[userConsentRequest](../resources/userconsentrequest.md) collection|Get a list of the [userConsentRequest](../resources/userconsentrequest.md) objects and their properties.|
|[Get userConsentRequest](../api/userconsentrequest-get.md)|[userConsentRequest](../resources/userconsentrequest.md)|Read the properties and relationships of a [userConsentRequest](../resources/userconsentrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[userIdentity](../resources/useridentity.md)|The user who created the request. |
|createdDateTime|DateTimeOffset|The date and time when the request was created.<br>The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.<br><br>Supports `$filter` (`eq` only) and `$sort`.|
|id|String|The identifier of a request. Inherited from [request](../resources/request.md)|
|reason|String|Reason for creating this request.<br><br>Supports `$filter` (`eq` only) and `$sort`. |
|status|String|Status of request. `Initializing`, `InProgress`, `Completed`. <br><br>Supports `$filter` (`eq` only) and `$sort`. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md)|Used to obtain approval. Inherited from [request](../resources/request.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userConsentRequest",
  "baseType": "microsoft.graph.request",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userConsentRequest",
  "id": "String (identifier)",
  "reason": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)"
}
```

