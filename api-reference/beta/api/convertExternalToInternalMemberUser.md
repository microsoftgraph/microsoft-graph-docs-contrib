---
title: ""
description: "Convert an external user to internal member"
author: "yyuank"
localization_priority: Normal
ms.prod: "groups"
doc_type: apiPageType
---

# user:convert to internal

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This API converts externally authenticated users into an internal user. The user will be able to sign into the host tenant as an internal user and access resources as a member.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [permissions reference](/graph/permissions-reference).

| Permission type | Least privileged permissions | Higher privileged permissions|
| :-------------- | :------------------------------------------ |
| Delegated (work or school account) | User-ConvertToInternal.ReadWrite.All | User.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported | Not supported |
| Application                            | User-ConvertToInternal.ReadWrite.All | User.ReadWrite.All |


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /users/id/convertExternalToInternalMemberUser
```

## Request headers

| Name | Description |
| :--- | :---------- |
| Authorization | Bearer {token} |
| Content-type  | application/json |

## Request body

In the request body, supply the required property below:


| Parameter | Type | Description |
| :-------- | :--- | :---------- |
| userPrincipalName | String | Required for cloud users to change the user principal name to. Not requried for on-prem synced users, as their userPrincipalName is managed on-prem.|
| passwordProfile | Microsoft.DirectoryServices.passowrdProfile | Required value for users whose authentication is managed in the cloud.| 

## Response

If successful, this method returns a `200 OK` response code and the id, displayName, userPrincipalName and convertedToInternalUserDateTime in the response. If the mail property is also set as part of API conversion then the mail property will also be returned with other default parameters.

## Examples

### Example 1: Convert user adn reset password on next login for a cloud user

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_convertExternalToInternalMemberUser"
}-->

```http
POST https://graph.microsoft.com/beta/users/id/convertExternalToInternalMemberUser
Content-type: application/json

{ 
  "userPrincipalName": "newUpn@contoso.com",
  "passwordProfile": { "password": "te$tPassw0rd", "forceChangePasswordNextLogin": "true" }

}
```

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
{
    "id": "ddbc5871-cc95-4b99-a162-ecdc91ece43e"
    "displayName" : "user1Name",
    "userPrincipalName" : "newUpn@contoso.com",
    "convertedToInternalUserDateTime" : "9999-12-31T23:59:59.9999999"
}

```

### Example 2: Convert User and Reset Password on Next Login cloud-only user with mail address

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "user_convertExternalToInternalMemberUser"
}-->

```http
POST https://graph.microsoft.com/beta/users/id/convertExternalToInternalMemberUser
Content-type: application/json
{
    "userprincipalName": "newUpn@contoso.com"
    "passwordProfile": { "password": "te$tPassw0rd", "forceChangePasswordNextLogin": "true" },
    "mail": "newMail@contoso.com"
}
```

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
{
    "id": "ddbc5871-cc95-4b99-a162-ecdc91ece43e"
    "displayName" : "user1Name",
    "userPrincipalName" : "newUpn@contoso.com",
    "convertedToInternalUserDateTime" : "9999-12-31T23:59:59.9999999",
    "mail": "newMail@contoso.com"
}
```

### Example 3: Convert external User to internal - on-prem user

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "user_convertExternalToInternalMemberUser"
}-->

```http
POST https://graph.microsoft.com/beta/users/id/convertExternalToInternalMemberUser
Content-type: application/json

```

#### Response

The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->

```http

HTTP/1.1 200 OK
{
    "id": "ddbc5871-cc95-4b99-a162-ecdc91ece43e"
    "displayName" : "user1Name",
    "userPrincipalName" : "newUpn@contoso.com",
    "convertedToInternalUserDateTime" : "9999-12-31T23:59:59.9999999"
}
```


<!--
{
  "type": "#page.annotation",
  "description": "user: convertExternalToInternalMemberUser",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
