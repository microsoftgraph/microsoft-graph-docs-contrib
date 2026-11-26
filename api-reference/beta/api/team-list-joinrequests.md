---
title: "List joinRequests"
description: "Get a list of the pending join requests for a team."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List joinRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the pending [join requests](../resources/teamjoinrequest.md) for a team. Only team owners can call this API.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "team_list_joinrequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/team-list-joinrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/joinRequests
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamJoinRequest](../resources/teamjoinrequest.md) objects in the response body. If the caller isn't a team owner, this method returns a `403 Forbidden` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_teamjoinrequest",
  "sampleKeys": ["7e5c4b9a-1a2b-4c3d-9e8f-0a1b2c3d4e5f"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/7e5c4b9a-1a2b-4c3d-9e8f-0a1b2c3d4e5f/joinRequests
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamJoinRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamJoinRequest",
      "id": "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9",
      "requester": {
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "3f2a1b0c-9d8e-4f7a-b6c5-d4e3f2a1b0c9",
          "displayName": "Adele Vance",
          "userIdentityType": "aadUser",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
        }
      },
      "sponsors": []
    },
    {
      "@odata.type": "#microsoft.graph.teamJoinRequest",
      "id": "8a7b6c5d-4e3f-4a1b-9c0d-1e2f3a4b5c6d",
      "requester": {
        "user": {
          "@odata.type": "#microsoft.graph.teamworkUserIdentity",
          "id": "8a7b6c5d-4e3f-4a1b-9c0d-1e2f3a4b5c6d",
          "displayName": "Alex Wilber",
          "userIdentityType": "aadUser",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
        }
      },
      "sponsors": [
        {
          "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "5c4d3e2f-1a0b-4c9d-8e7f-6a5b4c3d2e1f",
            "displayName": "Megan Bowen",
            "userIdentityType": "aadUser",
            "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
          }
        }
      ]
    }
  ]
}
```
