---
title: "List userRegistrationDetails"
description: "Get a list of the authentication methods registered for the user as defined in the userRegistrationDetails object."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List userRegistrationDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the authentication methods registered for the user as defined in the [userRegistrationDetails](../resources/userregistrationdetails.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_userregistrationdetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/userRegistrationDetails
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-userregistrationdetails-csharp-snippets.md)]
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

---

### Response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/authenticationMethods/userRegistrationDetails",
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
            "methodsRegistered": [
                "microsoftAuthenticatorPush",
                "softwareOneTimePasscode"
            ],
            "defaultMethod": "microsoftAuthenticatorPush",
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
            "methodsRegistered": [],
            "defaultMethod": "", 
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
            "methodsRegistered": [
                "mobilePhone",
                "microsoftAuthenticatorPush",
                "softwareOneTimePasscode"
            ],
            "defaultMethod": "mobilePhone",
            "userType": "member"
        }
    ]
}
```

