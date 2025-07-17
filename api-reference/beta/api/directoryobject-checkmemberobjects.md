---
title: "directoryObject: checkMemberObjects"
description: "Check for membership in a list of groups, administrative units, or directory roles for the specified user, group, service principal, organizational contact, device, or directory object."
ms.localizationpriority: medium
author: "yyuank"
ms.reviewer: "iamut"
ms.subservice: entra-users
doc_type: "apiPageType"
ms.date: 10/22/2024
ms.custom: sfi-ga-nochange
---

# directoryObject: checkMemberObjects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Check for membership in a list of group IDs, administrative unit IDs, or directory role IDs, for the IDs of the specified 
- [user](../resources/user.md)
- [group](../resources/group.md)
- [service principal](../resources/serviceprincipal.md)
- [organizational contact](../resources/orgcontact.md)
- [device](../resources/device.md)
- [directory object](../resources/directoryobject.md).

This method is transitive.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Memberships for a directory object
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Directory.Read.All|Directory.ReadWrite.All  |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Directory.Read.All|Directory.ReadWrite.All  |

> [!NOTE]
> The *Directory.\** permissions allow you to retrieve any supported directory object type via this API. To retrieve only a specific type, you can use permissions specific to the resource.

### Memberships for the signed-in user
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|User.Read|User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Not supported.|Not supported.|

### Memberships for other users
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|User.ReadBasic.All and GroupMember.Read.All|User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|User.ReadBasic.All and GroupMember.Read.All|User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All|

### Memberships for a group
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|GroupMember.Read.All|Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|GroupMember.Read.All|Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All|

### Memberships for a service principal
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Application.Read.All|Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Application.Read.All|Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All|

### Memberships for an organizational contact
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Directory.Read.All|Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Directory.Read.All|Directory.ReadWrite.All |

### Memberships for a device
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Device.Read.All|Device.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Device.Read.All|Device.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

## HTTP request


Memberships for a directory object.
<!-- { "blockType": "ignored" } -->
```http
POST /directoryObjects/{id}/checkMemberObjects
```

Memberships for the signed-in user.
<!-- { "blockType": "ignored" } -->
```http
POST /me/checkMemberObjects
POST /users/{id | userPrincipalName}/checkMemberObjects
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

Memberships for other users.
<!-- { "blockType": "ignored" } -->
```http
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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|ids|String collection|A collection that contains the object IDs of the groups, directory roles, administrative units, or roleTemplate IDs of directory roles, in which to check membership. Up to 20 objects may be specified.|

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
POST https://graph.microsoft.com/beta/me/checkMemberObjects
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
  "description": "directoryObject: checkMemberObjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


