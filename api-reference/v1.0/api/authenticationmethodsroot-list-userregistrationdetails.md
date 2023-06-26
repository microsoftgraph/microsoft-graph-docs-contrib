---
title: "List userRegistrationDetails"
description: "Get a list of the authentication methods registered for a user as defined in the userRegistrationDetails object."
author: "kvenkit"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List userRegistrationDetails

Namespace: microsoft.graph

Get a list of the authentication methods registered for a user as defined in the [userRegistrationDetails](../resources/userregistrationdetails.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|UserAuthenticationMethod.Read.All and AuditLog.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|UserAuthenticationMethod.Read.All and AuditLog.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/userRegistrationDetails
```

## Optional query parameters

This method supports only the `$filter` and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userRegistrationDetails](../resources/userregistrationdetails.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "list_userregistrationdetails"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/authenticationMethods/userRegistrationDetails
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userRegistrationDetails)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#reports/authenticationMethods/userRegistrationDetails",
  "value": [
    {
      "id": "86462606-fde0-4fc4-9e0c-a20eb73e54c6",
      "userPrincipalName": "AlexW@Contoso.com",
      "userDisplayName": "Alex Wilber",
      "isAdmin": false,
      "isSsprRegistered": false,
      "isSsprEnabled": false,
      "isSsprCapable": false,
      "isMfaRegistered": true,
      "isMfaCapable": true,
      "isPasswordlessCapable": false,
      "lastUpdatedDateTime": "2023-03-13T19:15:41.6195833Z",
      "methodsRegistered": [
        "microsoftAuthenticatorPush",
        "softwareOneTimePasscode"
      ],
      "isSystemPreferredAuthenticationMethodEnabled": "true",
      "systemPreferredAuthenticationMethods": [
        "push"
      ],
      "userPreferredMethodForSecondaryAuthentication": "push",
      "userType": "member"
    },
    {
      "id": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
      "userPrincipalName": "AllanD@Contoso.com",
      "userDisplayName": "Allan Deyoung",
      "isAdmin": false,
      "isSsprRegistered": false,
      "isSsprEnabled": false,
      "isSsprCapable": false,
      "isMfaRegistered": false,
      "isMfaCapable": false,
      "isPasswordlessCapable": false,
      "lastUpdatedDateTime": "2023-03-13T19:15:41.6195833Z",
      "methodsRegistered": [],
      "isSystemPreferredAuthenticationMethodEnabled": "true",
      "systemPreferredAuthenticationMethods": [],
      "userPreferredMethodForSecondaryAuthentication": "",
      "userType": "guest"
    },
    {
      "id": "c8096958-797c-44fa-8fde-a6fb62567cf0",
      "userPrincipalName": "BiancaP@Contoso.com",
      "userDisplayName": "Bianca Pisani",
      "isAdmin": false,
      "isSsprRegistered": true,
      "isSsprEnabled": false,
      "isSsprCapable": false,
      "isMfaRegistered": true,
      "isMfaCapable": true,
      "isPasswordlessCapable": false,
      "lastUpdatedDateTime": "2023-03-13T19:15:41.6195833Z",
      "methodsRegistered": [
        "mobilePhone",
        "microsoftAuthenticatorPush",
        "softwareOneTimePasscode"
      ],
      "isSystemPreferredAuthenticationMethodEnabled": "true",
      "systemPreferredAuthenticationMethods": [
        "push"
      ],
      "userPreferredMethodForSecondaryAuthentication": "voiceMobile",
      "userType": "member"
    }
  ]
}
```
