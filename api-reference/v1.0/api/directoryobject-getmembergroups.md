---
title: "directoryObject: getMemberGroups"
description: "Return all the groups that the specified user, group, service principal, organizational contact, device, or directory object is a member of. This function is transitive."
ms.localizationpriority: medium
author: "keylimesoda"
ms.prod: "directory-management"
doc_type: apiPageType
---

# directoryObject: getMemberGroups

Namespace: microsoft.graph

Return all the group IDs for the groups that the specified [user](../resources/user.md), [group](../resources/group.md), [service principal](../resources/serviceprincipal.md), [organizational contact](../resources/orgcontact.md), [device](../resources/device.md), or [directory object](../resources/directoryobject.md) is a member of. This function is transitive.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


### Group memberships for a directory object

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadBasic.All and GroupMember.Read.All, User.Read.All and GroupMember.Read.All, User.ReadBasic.All and Group.Read.All, User.Read.All and Group.Read.All, Directory.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.Read.All and GroupMember.Read.All, User.Read.All and Group.Read.All, Directory.Read.All |

### Group memberships for a user

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadBasic.All and GroupMember.Read.All, User.Read.All and GroupMember.Read.All, User.ReadBasic.All and Group.Read.All, User.Read.All and Group.Read.All, Directory.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.Read.All and GroupMember.Read.All, User.Read.All and Group.Read.All, Directory.Read.All |

### Group memberships for a group

| Permission type                        | Permissions (from least to most privileged)                                                 |
| :------------------------------------- | :------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | GroupMember.Read.All, Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                              |
| Application                            | GroupMember.Read.All, Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All                             |

### Group memberships for a service principal

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.All, Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.Read.All, Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All |

### Group memberships for an organizational contact

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.Read.All, Directory.ReadWrite.All |

### Group memberships for a device

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Device.Read.All, Directory.Read.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Device.Read.All, Device.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

<!--

Use the follow scenario guidance to help determine which permission types to use:

| Scenario | Permissions to use |
|:-|:-|
| To get group memberships for the signed-in user | Use one of the following sets of permissions: <br/> <li> **User.Read** and **GroupMember.Read.All** <li>**User.Read** and **Group.Read.All** |
| To get group memberships for any user | Use one of the following sets of permissions: <br/> <li> **User.ReadBasic.All** and **GroupMember.Read.All** <li>**User.Read.All** and **GroupMember.Read.All** <li>**User.ReadBasic.All** and **Group.Read.All** <li>**User.Read.All** and **Group.Read.All** |
| To get group memberships for a group | Use either the **GroupMember.Read.All** or **Group.Read.All** permission. |
| To get group memberships for a directory object | Use the **Directory.Read.All** permission. |

<!-- These tables will replace the data in lines 22-36 to help with the tooling that parses permissions tables.
+ Current data is copy-pasted from incorrect files/file names
+ To validate these permissions against lines 32-36
-->

## HTTP request

Group memberships for a directory object (user, group, service principal, or organizational contact).
<!-- { "blockType": "ignored" } -->
```http
POST /directoryObjects/{id}/getMemberGroups
```

Group memberships for the signed-in user or other users.
<!-- { "blockType": "ignored" } -->
```http
POST /me/getMemberGroups
POST /users/{id | userPrincipalName}/getMemberGroups
```

Group memberships for a group.
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/getMemberGroups
```

Group memberships for a service principal.
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/{id}/getMemberGroups
```

Group memberships for an organizational contact.
<!-- { "blockType": "ignored" } -->
```http
POST /contacts/{id}/getMemberGroups
```

Group memberships for a device.
<!-- { "blockType": "ignored" } -->
```http
POST /devices/{id}/getMemberGroups
```

## Request headers
| Name       | Description|
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |
| Content-Type   | application/json  |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean| `true` to specify that only security groups that the entity is a member of should be returned; `false` to specify that all groups and directory roles that the entity is a member of should be returned. `true` can be specified only for users or service principals to return security-enabled groups. |

## Response

If successful, this method returns `200 OK` response code and String collection object in the response body.

## Examples

### Example 1: Check group memberships for a directory object

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryobject_getmembergroups"
}-->
```http
POST https://graph.microsoft.com/v1.0/directoryObjects/0049d944-a805-4680-9f54-3ab292090309/getMemberGroups
Content-type: application/json

{
    "securityEnabledOnly": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-getmembergroups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-getmembergroups-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-getmembergroups-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-getmembergroups-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-getmembergroups-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/directoryobject-getmembergroups-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(Edm.String)",
    "value": [
        "a8daa1fb-d24c-47d0-9e9e-c99e83394e3e"
    ]
}
```

### Example 2: Check group memberships for the signed-in user

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryobject_getmembergroups_me"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/getMemberGroups
Content-type: application/json

{
  "securityEnabledOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-getmembergroups-me-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-getmembergroups-me-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-getmembergroups-me-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-getmembergroups-me-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-getmembergroups-me-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/directoryobject-getmembergroups-me-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
        "6239671a-0db6-4e8b-9d2f-f280efb5a181",
        "2e2f1227-1586-45ae-bf51-fccc1de72625",
        "1dae9306-be75-4c3c-99ec-0316a4342c84",
        "0e2d1bbb-76f8-4140-bda7-2a858b74507e",
        "0049d944-a805-4680-9f54-3ab292090309",
        "a8daa1fb-d24c-47d0-9e9e-c99e83394e3e",
        "6f204729-1b8f-4067-bcc9-98fb6c069ffd",
        "59afd38d-441a-4358-b074-8b9b1e7de52f",
        "64ed3df3-53c7-4d4d-ac5c-5c8dd4dafe33",
        "8b676bab-4b1e-419e-a253-7f5aca97d739",
        "be4ef325-9fa8-40d7-b375-4758853ddf52",
        "f5987b5a-61f6-4c31-9fa2-7bfb845c8d2a"
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryObject: getMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

