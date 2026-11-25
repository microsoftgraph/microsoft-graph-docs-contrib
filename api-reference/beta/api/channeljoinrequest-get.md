---
title: "Get channelJoinRequest"
description: "Get a pending join request for a private or shared channel."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get channelJoinRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a pending [join request](../resources/channeljoinrequest.md) for a private or shared [channel](../resources/channel.md). Only channel owners can call this API.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channeljoinrequest_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/channeljoinrequest-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/channels/{channel-id}/joinRequests/{channelJoinRequest-id}
```

> **Note:** Join requests apply only to private and shared channels.

The ID of a join request is the Microsoft Entra object ID of the requester.

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [channelJoinRequest](../resources/channeljoinrequest.md) object in the response body. If no pending join request exists with the specified ID, this method returns a `404 Not Found` response code. If the caller isn't a channel owner, this method returns a `403 Forbidden` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_channeljoinrequest",
  "sampleKeys": ["7e5c4b9a-1a2b-4c3d-9e8f-0a1b2c3d4e5f", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2", "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/7e5c4b9a-1a2b-4c3d-9e8f-0a1b2c3d4e5f/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/joinRequests/3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channelJoinRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.channelJoinRequest",
  "id": "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9",
  "requester": {
    "user": {
      "@odata.type": "#microsoft.graph.teamworkUserIdentity",
      "id": "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9",
      "displayName": "Adele Vance",
      "userIdentityType": "aadUser",
      "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
    }
  }
}
```
