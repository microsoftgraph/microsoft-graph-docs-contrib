---
title: "Create historyItem"
description: "Create a new historyItem object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create historyItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new historyItem object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-post-historyitems-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-post-historyitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/planner/plans_v2/{planId}/historyItems
POST /users/{usersId}/planner/plans_v2/{planId}/historyItems
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [historyItem](../resources/historyitem.md) object.

You can specify the following properties when creating a **historyItem**.

|Property|Type|Description|
|:---|:---|:---|
|planId|String|ID of the plan the change occurred in. Optional.|
|entityId|String|ID of the entity the history item describes. Optional.|
|entityType|historyEntityType|Type of the entity the history item describes. The possible values are: `task`, `unknownFutureValue`. Optional.|
|eventType|historyEventType|Type of the change event that occurred. The possible values are: `created`, `updated`, `deleted`, `undeleted`, `moved`, `unknownFutureValue`. Optional.|
|occurredDateTime|DateTimeOffset|Date and time the change occurred. Read-only. Optional.|
|actor|[identitySet](../resources/identityset.md)|Identity of the user (or application) that performed the change. Optional.|
|oldData|String|Serialized representation of the entity state before the change. Optional.|
|newData|String|Serialized representation of the entity state after the change. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [historyItem](../resources/historyitem.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_historyitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/historyItems
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.historyItem",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "entityId": "a5f3d9c2-7b41-4e6d-9c2a-1f8b3d6a9e42",
  "entityType": "task",
  "eventType": "updated",
  "occurredDateTime": "2026-06-15T09:30:00Z",
  "actor": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "oldData": "{\"status\":\"notStarted\"}",
  "newData": "{\"status\":\"inProgress\"}"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.historyItem"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.historyItem",
  "id": "02636413-50f8-710f-bed1-a0f488aa4e54",
  "planId": "String",
  "entityId": "String",
  "entityType": "String",
  "eventType": "String",
  "occurredDateTime": "String (timestamp)",
  "actor": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "oldData": "String",
  "newData": "String"
}
```

