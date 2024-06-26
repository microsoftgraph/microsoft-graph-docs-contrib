---
title: "Get a member"
description: "Use this API to get a specific member (user, group, or device) in an administrative unit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get a member

Namespace: microsoft.graph

Use this API to get a specific member (user, group, or device) in an administrative unit.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "administrativeunit_get_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/administrativeunit-get-members-permissions.md)]

## HTTP request

```http
GET /directory/administrativeUnits/{id}/members/{id}
```
## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [user](../resources/user.md), [group](../resources/group.md), or [device](../resources/device.md) object in the response body.

## Example

### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_administrativeunit_members"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/directory/administrativeUnits/8a07f5a8-edc9-4847-bbf2-dde106594bf4/members/5bde3e51-d13b-4db1-9948-fe4b109d11a7
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-administrativeunit-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.administrativeUnit"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects/$entity",
    "@odata.type": "#microsoft.graph.user",
    "id": "5bde3e51-d13b-4db1-9948-fe4b109d11a7",
    "businessPhones": [
        "8006427676"
    ],
    "displayName": "MOD Administrator",
    "givenName": "MOD",
    "jobTitle": null,
    "mail": "admin@contoso.com",
    "mobilePhone": "5555555555",
    "officeLocation": null,
    "preferredLanguage": "en-US",
    "surname": "Administrator",
    "userPrincipalName": "admin@contoso.com"
}
```
