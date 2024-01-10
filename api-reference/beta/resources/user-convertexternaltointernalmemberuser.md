---
title: "user: convertExternalToInternalMemberUser"
description: "Converts an external user to an internal member"
author: "yyuank"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# user: convertExternalToInternalMemberUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This API converts an externally authenticated user into an internal user. The user will be able to sign into the host tenant as an internal user and access resources as a member.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "user-convertexternaltointernalmemberuser-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/user-convertexternaltointernalmemberuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/convertExternalToInternalMemberUser
POST /users/{usersId}/convertExternalToInternalMemberUser
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|userPrincipalName|String|Required for cloud users to change the user principal name to. Not requried for on-prem synced users, as their userPrincipalName is managed on-prem.|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|Required value for users whose authentication is managed in the cloud.|
|mail|String|Optional|



## Response

If successful, this method returns a `200 OK` response code and the id, displayName, userPrincipalName and convertedToInternalUserDateTime in the response. If the mail property is also set as part of API conversion then the mail property will also be returned with other default parameters.

## Examples

### Example 1: Convert user and reset password on next login for a cloud user

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "userthis.convertexternaltointernalmemberuser-cloudonly"
}
-->
```http
POST https://graph.microsoft.com/beta/users/id/convertExternalToInternalMemberUser
Content-type: application/json

{ 
  "userPrincipalName": "newUpn@contoso.com",
  "passwordProfile": { "password": "te$tPassw0rd", "forceChangePasswordNextLogin": "true" }

}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "ddbc5871-cc95-4b99-a162-ecdc91ece43e"
    "displayName" : "user1Name",
    "userPrincipalName" : "newUpn@contoso.com",
    "convertedToInternalUserDateTime" : "9999-12-31T23:59:59.9999999"
}

```

### Example 2: Convert User and Reset Password on Next Login for a cloud-only user with mail address

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "userthis.convertexternaltointernalmemberuser-cloudonly-with-mail"
}
-->
```http
POST https://graph.microsoft.com/beta/users/id/convertExternalToInternalMemberUser
Content-type: application/json

{
    "userprincipalName": "newUpn@contoso.com"
    "passwordProfile": { "password": "te$tPassw0rd", "forceChangePasswordNextLogin": true },
    "mail": "newMail@contoso.com"
}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "ddbc5871-cc95-4b99-a162-ecdc91ece43e"
    "displayName" : "user1Name",
    "userPrincipalName" : "newUpn@contoso.com",
    "convertedToInternalUserDateTime" : "9999-12-31T23:59:59.9999999",
    "mail": "newMail@contoso.com"
}
```

### Example 3: Convert external User to internal for a user synchronized from on-premises AD

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "userthis.convertexternaltointernalmemberuser-synceduser"
}
-->
```http
POST https://graph.microsoft.com/beta/users/id/convertExternalToInternalMemberUser

```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
    "id": "ddbc5871-cc95-4b99-a162-ecdc91ece43e"
    "displayName" : "user1Name",
    "userPrincipalName" : "newUpn@contoso.com",
    "convertedToInternalUserDateTime" : "9999-12-31T23:59:59.9999999"
}
```


