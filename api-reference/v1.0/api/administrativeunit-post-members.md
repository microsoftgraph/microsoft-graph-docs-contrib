---
title: "Add a member"
description: "Use this API to add a member (user, group, or device) to an administrative unit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Add a member

Namespace: microsoft.graph

Use this API to add a member (user, group, or device) to an administrative unit. Currently it's only possible to add one member at a time to an administrative unit.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AdministrativeUnit.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AdministrativeUnit.ReadWrite.All |

To add a member to an administrative unit, the calling principal must be assigned one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference):

* Privileged Role Administrator
* Global Administrator

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directory/administrativeUnits/{id}/members/$ref
```
## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-type | application/json. Required. |

## Request body
In the request body, provide the `id` of a [user](../resources/user.md),  [group](../resources/group.md), [device](../resources/device.md), or [directoryObject](../resources/directoryobject.md) to be added.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example
### Request
Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_administrativeUnits_members"
} -->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/directory/administrativeUnits/{id}/members/$ref
Content-type: application/json

{
  "@odata.id":"https://graph.microsoft.com/v1.0/groups/{id}"
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-administrativeunits-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-administrativeunits-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-administrativeunits-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-administrativeunits-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-administrativeunits-members-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-administrativeunits-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
