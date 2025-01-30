---
title: "List all delegates"
description: "Retrieve a list of all delegates for a user."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
ms.date: 01/28/2025
---

# List all delegates

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of all delegates for a user. See [call delegation](../resources/calldelegation.md) for reference.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "presence_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegation-get-permissions.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
GET /me/communications/callSettings/delegates
GET /users/{user_id}/communications/callSettings/delegates
```

## Request Headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|


## Request body

Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a list [delegate](../resources/calldelegation.md) objects in the response body.

## Examples

### Example 1: Get user delegates 

The following example shows how to get a list of delegates from a user.

#### Request

The following example shows a request.

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{user_id}/communications/callSettings/delegators
```

#### Response

The following example shows the response.

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