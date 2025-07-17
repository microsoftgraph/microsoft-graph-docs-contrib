---
title: "directoryObject: getMemberObjects"
description: "Return all the groups, administrative units, and directory roles that a user, group, service principal, organizational contact, device or directory object is a member of. This function is transitive."
ms.localizationpriority: medium
author: "keylimesoda"
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 04/05/2024
---

# directoryObject: getMemberObjects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return all IDs for the groups, administrative units, and directory roles that an object of one of the following types is a member of:
- [user](../resources/user.md)
- [group](../resources/group.md)
- [service principal](../resources/serviceprincipal.md)
- [organizational contact](../resources/orgcontact.md)
- [device](../resources/device.md)
- [directory object](../resources/directoryobject.md)

This function is transitive. Only users and role-enabled groups can be members of directory roles.

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
POST /directoryObjects/{id}/getMemberObjects
```

Memberships for the signed-in user.
<!-- { "blockType": "ignored" } -->
```http
POST /me/getMemberObjects
```

Memberships for other user.
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id | userPrincipalName}/getMemberObjects
```

Memberships for a group.
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/getMemberObjects
```

Memberships for a service principal.
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/{id}/getMemberObjects
```

Memberships for an organizational contact.
<!-- { "blockType": "ignored" } -->
```http
POST /contacts/{id}/getMemberObjects
```

Memberships for a device.
<!-- { "blockType": "ignored" } -->
```http
POST /devices/{id}/getMemberObjects
```

## Request headers
| Name       | Description|
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean| `true` to specify that only security groups that the entity is a member of should be returned; `false` to specify that all groups, administrative units, and directory roles that the entity is a member of should be returned. |

## Response

If successful, this method returns `200 OK` response code and String collection object in the response body.

## Example

##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryobject_getmemberobjects"
}-->
```http
POST https://graph.microsoft.com/beta/me/getMemberObjects
Content-type: application/json

{
  "securityEnabledOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-getmemberobjects-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/directoryobject-getmemberobjects-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-getmemberobjects-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-getmemberobjects-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-getmemberobjects-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-getmemberobjects-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/directoryobject-getmemberobjects-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/directoryobject-getmemberobjects-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(Edm.String)",
    "value": [
        "fee2c45b-915a-4a64-b130-f4eb9e75525e",
        "4fe90ae7-065a-478b-9400-e0a0e1cbd540",
        "c9ee2d50-9e8a-4352-b97c-4c2c99557c22",
        "e0c3beaf-eeb4-43d8-abc5-94f037a65697"
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directoryObject: getMemberObjects",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


