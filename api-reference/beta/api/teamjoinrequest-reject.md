---
title: "teamJoinRequest: reject"
description: "Reject up to 20 pending requests to join a team."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# teamJoinRequest: reject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reject up to 20 pending [requests](../resources/teamjoinrequest.md) to join a [team](../resources/team.md). Each join request is removed, and the requester isn't added. Only team owners can call this API.

This action returns one [teamJoinRequestActionResult](../resources/teamjoinrequestactionresult.md) for each join request ID. The operation succeeds or fails independently for each join request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamjoinrequest_reject" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamjoinrequest-reject-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{team-id}/joinRequests/reject
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|joinRequestIds|String collection|The IDs of the join requests to reject. The ID of a join request is the Microsoft Entra object ID of the requester. Duplicate IDs are ignored. The maximum number of IDs is 20. Required.|

## Response

If successful, this action returns a `200 OK` response code and a collection of [teamJoinRequestActionResult](../resources/teamjoinrequestactionresult.md) objects in the response body. The **error** property of each result is `null` when the operation succeeded for that join request.

The following table lists the error codes that can be returned in the **error** property of a result.

|Error code|Description|
|:---|:---|
|joinRequestNotFound|No pending join request exists with this ID. The request might already be approved, rejected, or canceled.|

This action returns a `400 Bad Request` response code if **joinRequestIds** is empty, contains more than 20 IDs, or contains an ID that isn't a GUID. If the caller isn't a team owner, this action returns a `403 Forbidden` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "teamjoinrequest_reject",
  "sampleKeys": ["7e5c4b9a-1a2b-4c3d-9e8f-0a1b2c3d4e5f"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/7e5c4b9a-1a2b-4c3d-9e8f-0a1b2c3d4e5f/joinRequests/reject
Content-Type: application/json

{
  "joinRequestIds": [
    "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9",
    "8a7b6c5d-4e3f-4a1b-9c0d-1e2f3a4b5c6d",
    "1d2e3f4a-5b6c-4d7e-8f9a-0b1c2d3e4f5a"
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamJoinRequestActionResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamJoinRequestActionResult",
      "joinRequestId": "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.teamJoinRequestActionResult",
      "joinRequestId": "8a7b6c5d-4e3f-4a1b-9c0d-1e2f3a4b5c6d",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.teamJoinRequestActionResult",
      "joinRequestId": "1d2e3f4a-5b6c-4d7e-8f9a-0b1c2d3e4f5a",
      "error": {
        "code": "joinRequestNotFound",
        "message": "The join request was not found."
      }
    }
  ]
}
```
