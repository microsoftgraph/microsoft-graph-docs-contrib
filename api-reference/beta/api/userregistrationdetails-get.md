---
title: "Get userRegistrationDetails"
description: "Read the properties and relationships of a userRegistrationDetails object."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 07/26/2024
---

# Get userRegistrationDetails

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [userRegistrationDetails](../resources/userregistrationdetails.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userregistrationdetails_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/userregistrationdetails-get-permissions.md)]

[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userRegistrationDetails](../resources/userregistrationdetails.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_userregistrationdetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/userRegistrationDetails/86462606-fde0-4fc4-9e0c-a20eb73e54c6
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

The following example shows the response.

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
