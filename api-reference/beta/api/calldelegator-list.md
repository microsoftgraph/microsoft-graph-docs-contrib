---
title: "List all delegators"
description: "Retrieve a list of all delegators for a user."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
ms.date: 01/28/2025
---

# List all delegators

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of all delegators for a user. See [call delegation](../resources/calldelegation.md) for reference.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "presence_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegation-get-permissions.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
GET /me/communications/callSettings/delegators
GET /users/{user_id}/communications/callSettings/delegators
```

## Request Headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|


## Request body

Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a list of [delegator](../resources/calldelegation.md) objects in the response body.

## Examples

### Example 1: Get user delegators 

The following example shows how to get a list of delegators from a user.

#### Request


# [HTTP](#tab/http)

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{user_id}/communications/callSettings/delegators
```

#### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('{user_id}')/communications/callSettings/delegators",
  "value": [
    {
      "id": "00000000-0000-0000-0000-000000000000",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "isActive": true,
      "allowedActions": {
        "makeCalls": true,
        "receiveCalls": true,
        "manageCallAndDelegateSettings": true,
        "pickUpHeldCalls": true,
        "joinActiveCalls": true
      }
    }
  ]
}
```
