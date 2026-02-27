---
title: "authenticationMethodsRoot: userSignInsByAuthMethodSummary"
description: "Gets a list of the number of successful sign ins for each authentication method that is available."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.custom: sfi-ga-nochange
---

# authenticationMethodsRoot: userSignInsByAuthMethodSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a list of the number of successful sign ins for each authentication method that is available.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authenticationmethodsroot-usersigninsbyauthmethodsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodsroot-usersigninsbyauthmethodsummary-permissions.md)]

[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/userSignInsByAuthMethodSummary(period='{period}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|period|aggregationPeriod|The aggregation window to get summary for. The possible values are: `d1` (1 day), `d7` (7 days), `d30` (30 days). |


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [userSignInUsageByAuthMethodActivity](../resources/usersigninusagebyauthmethodactivity.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethodsrootthis.usersigninsbyauthmethodsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/userSignInsByAuthMethodSummary(period='d1')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/authenticationmethodsrootthisusersigninsbyauthmethodsummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/authenticationmethodsrootthisusersigninsbyauthmethodsummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/authenticationmethodsrootthisusersigninsbyauthmethodsummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/authenticationmethodsrootthisusersigninsbyauthmethodsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/authenticationmethodsrootthisusersigninsbyauthmethodsummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/authenticationmethodsrootthisusersigninsbyauthmethodsummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/authenticationmethodsrootthisusersigninsbyauthmethodsummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userSignInUsageByAuthMethodActivity)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "password",
      "successActivityCount": 1470
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "sms",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "smsSignIn",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "mobilePhone",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "alternateMobilePhone",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "officePhone",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "microsoftAuthenticatorPush",
      "successActivityCount": 8
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "oneTimePasscode",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "microsoftAuthenticatorPasswordless",
      "successActivityCount": 504
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "windowsHelloForBusiness",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "fido2SecurityKey",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "temporaryAccessPass",
      "successActivityCount": 90
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "macOsSecureEnclaveKey",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "passKeyDeviceBound",
      "successActivityCount": 843
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "passKeySynced",
      "successActivityCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
      "authenticationMethod": "externalAuthMethod",
      "successActivityCount": 0
    }
  ]
}

```

