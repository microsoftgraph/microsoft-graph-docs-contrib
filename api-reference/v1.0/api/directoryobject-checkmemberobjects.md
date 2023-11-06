---
title: "directoryObject: checkMemberObjects"
description: "Check for membership in a list of groups, administrative units, or directory roles for the specified user, group, service principal, organizational contact, device, or directory object."
ms.localizationpriority: medium
author: "yyuank"
ms.prod: "users"
doc_type: "apiPageType"
---

# directoryObject: checkMemberObjects

Namespace: microsoft.graph

Check for membership in a list of group IDs, administrative unit IDs, or directory role IDs, for the IDs of the specified [user](../resources/user.md), [group](../resources/group.md), [service principal](../resources/serviceprincipal.md), [organizational contact](../resources/orgcontact.md), [device](../resources/device.md), or [directory object](../resources/directoryobject.md). This method is transitive.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Memberships for a directory object

<!-- { "blockType": "permissions", "name": "directoryobject_checkmemberobjects" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-checkmemberobjects-permissions.md)]

### Memberships for a user

<!-- { "blockType": "permissions", "name": "directoryobject_checkmemberobjects_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-checkmemberobjects-2-permissions.md)]

### Memberships for a group

<!-- { "blockType": "permissions", "name": "directoryobject_checkmemberobjects_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-checkmemberobjects-3-permissions.md)]

### Memberships for a service principal

<!-- { "blockType": "permissions", "name": "directoryobject_checkmemberobjects_4" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-checkmemberobjects-4-permissions.md)]

### Memberships for an organizational contact

<!-- { "blockType": "permissions", "name": "directoryobject_checkmemberobjects_5" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-checkmemberobjects-5-permissions.md)]

### Memberships for a device

<!-- { "blockType": "permissions", "name": "directoryobject_checkmemberobjects_6" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-checkmemberobjects-6-permissions.md)]


## HTTP request


Memberships for a directory object.
<!-- { "blockType": "ignored" } -->
```http
POST /directoryObjects/{id}/checkMemberObjects
```

Memberships for a user.
<!-- { "blockType": "ignored" } -->
```http
POST /me/checkMemberObjects
POST /users/{id | userPrincipalName}/checkMemberObjects
```

Memberships for a group.
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/checkMemberObjects
```

Memberships for a service principal.
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/{id}/checkMemberObjects
```

Memberships for an organizational contact.
<!-- { "blockType": "ignored" } -->
```http
POST /contacts/{id}/checkMemberObjects
```

Memberships for a device.
<!-- { "blockType": "ignored" } -->
```http
POST /devices/{id}/checkMemberObjects
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|ids|String collection|A collection that contains the object IDs of the groups, administrative units, directory roles, or roleTemplate IDs of directory roles, in which to check membership. You can specify up to 20 objects.|

## Response

If successful, this method returns a `200 OK` response code and a new String collection object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_checkmemberobjects"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/checkMemberObjects
Content-type: application/json

{
  "ids": [
    "80a963dd-84af-4eb8-b2a6-781e444d4fb0",
    "62e90394-69f5-4237-9190-012177145e10",
    "86a64f51-3a64-4cc6-a8c8-6b8f000c0f52",
    "ac38546e-ddf3-437a-ac5c-27a94cd7a0f1"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-checkmemberobjects-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-checkmemberobjects-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-checkmemberobjects-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-checkmemberobjects-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-checkmemberobjects-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-checkmemberobjects-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-checkmemberobjects-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-checkmemberobjects-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "String",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    "80a963dd-84af-4eb8-b2a6-781e444d4fb0", 
    "62e90394-69f5-4237-9190-012177145e10"
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: checkMemberObjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

