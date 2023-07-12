---
title: "Get userRegistrationDetails"
description: "Read the properties and relationships of a userRegistrationDetails object."
author: "kvenkit"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# Get userRegistrationDetails

Namespace: microsoft.graph

Read the properties and relationships of a [userRegistrationDetails](../resources/userregistrationdetails.md) object.

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
GET /reports/authenticationMethods/userRegistrationDetails/{userId}
```

## Optional query parameters

This method does not support the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userRegistrationDetails](../resources/userregistrationdetails.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_userregistrationdetails"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/reports/authenticationMethods/userRegistrationDetails/86462606-fde0-4fc4-9e0c-a20eb73e54c6
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-userregistrationdetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-userregistrationdetails-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-userregistrationdetails-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-userregistrationdetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-userregistrationdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-userregistrationdetails-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-userregistrationdetails-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-userregistrationdetails-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userRegistrationDetails"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
    "defaultMfaMethod": "microsoftAuthenticatorPush",
    "isSystemPreferredAuthenticationMethodEnabled": true,
    "systemPreferredAuthenticationMethods": [
      "push"
    ],
    "userPreferredMethodForSecondaryAuthentication": "push",
    "userType": "member"
  }
}
```
