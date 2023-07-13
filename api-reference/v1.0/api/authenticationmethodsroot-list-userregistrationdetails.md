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
|Delegated (work or school account)|AuditLog.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AuditLog.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/userRegistrationDetails
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [userRegistrationDetails](../resources/userregistrationdetails.md) resource.

| Property          | Description                                                                                                                     | Example                                                                   |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|
| isMfaCapable      | Filter for users who are ready to perform password reset or multi-factor authentication (MFA). Supported filter operators: `eq`.| `/reports/userRegistrationDetails?$filter=isMfaCapable eq true`           |
| isMfaRegistered   | Filter for users who are registered for MFA. Supported filter operators are: `eq`.                                              | `/reports/userRegistrationDetails?$filter=isMfaRegistered eq true`        |
| isSsprEnabled     | Filter for users who have been enabled for SSPR. Supported filter operators are: `eq`.                                          | `/reports/userRegistrationDetails?$filter=isSsprEnabled eq true`.         |
| isSsprRegistered  | Filter for users who have registered for self-service password reset (SSPR). Supported filter operators are: `eq`.              | `/reports/userRegistrationDetails?$filter=isSsprRegistered eq true`       |
| methodsRegistered | Filter by the authentication methods used during registration. Supported filter operators are: `eq`.                            | `/reports/userRegistrationDetails?$filter=methodsRegistered eq 'email'`   |
| userDisplayName   | Filter by user name. Supported filter operators are: `eq` and `startswith()`. Supports case insensitive.                        | `/reports/userRegistrationDetails?$filter=userDisplayName eq 'Contoso'`   |
| userPrincipalName | Filter by user principal name. Supported filter operators are: `eq` and `startswith()`. Supports case insensitive.              | `/reports/userRegistrationDetails?$filter=userPrincipalName eq 'Contoso'` |

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_userregistrationdetails"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/authenticationMethods/userRegistrationDetails
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-userregistrationdetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-userregistrationdetails-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-userregistrationdetails-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-userregistrationdetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-userregistrationdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-userregistrationdetails-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-userregistrationdetails-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-userregistrationdetails-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
      "isSystemPreferredAuthenticationMethodEnabled": true,
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
      "isSystemPreferredAuthenticationMethodEnabled": true,
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
      "isSystemPreferredAuthenticationMethodEnabled": true,
      "systemPreferredAuthenticationMethods": [
        "push"
      ],
      "userPreferredMethodForSecondaryAuthentication": "voiceMobile",
      "userType": "member"
    }
  ]
}
```
