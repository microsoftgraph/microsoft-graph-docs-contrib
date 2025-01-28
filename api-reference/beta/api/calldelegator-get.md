---
title: "Get delegator information"
description: "Get a delegator information."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
ms.date: 01/28/2025
---

# Get delegator by ID

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Fetch details of a specific delegator. See [call delegation](../resources/calldelegation.md) for reference.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegator and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "presence_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegation-get-permissions.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
GET /me/communications/callSettings/delegators/{delegatorId}
GET /users/{user_id}/communications/callSettings/delegators/{delegatorId}
```

## Request Headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|


## Request body

Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a [delegator](../resources/calldelegation.md) object in the response body.

## Examples

### Example 1: Get details from specific delegator

The following example shows how to get details from a specific delegator from a user.

#### Request


# [HTTP](#tab/http)

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{user_id}/communications/callSettings/delegators/{delegatorId}
```

#### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1574
{
  "@odata.context": "https://graph.microsoft.com/$metadata#users/{user_uid}/communications/callSettings/delegators/$entity",
  "id": "739cfec7-7956-409a-a1c8-a76daab23c2a",
  "createdDateTime": "0001-01-01T00:00:00Z",
  "isActive": true,
  "allowedActions": {
    "makeCalls": true,
    "receiveCalls": true,
    "manageCallAnddelegatorSettings": true,
    "pickUpHeldCalls": true,
    "joinActiveCalls": true
  }
}
```