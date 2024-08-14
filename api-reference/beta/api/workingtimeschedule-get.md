---
title: "Get workingTimeSchedule"
description: "Read the properties and relationships of a workingTimeSchedule object."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get workingTimeSchedule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [workingTimeSchedule](../resources/workingtimeschedule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "workingtimeschedule-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/workingtimeschedule-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/solutions/schedule
```

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [workingTimeSchedule](../resources/workingtimeschedule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_workingtimeschedule"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/ccdf8279-8a3f-4c10-af1a-4a7f46b1489f/solutions/schedule
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workingTimeSchedule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.teams.workingTime.workingTimeSchedule",
    "id": "da5f72af-450e-56fc-10d7-afc9acb40cc0"
  }
}
```

