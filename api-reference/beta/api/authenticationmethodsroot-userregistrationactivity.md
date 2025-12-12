---
title: "authenticationMethodsRoot: userRegistrationActivity"
description: "Get a list of the authentication methods and their corresponding number of successful and unsuccessful  registration and reset activities as defined in the userRegistrationActivity object."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# authenticationMethodsRoot: userRegistrationActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the authentication methods and their corresponding number of successful and unsuccessful  registration and reset activities as defined in the [userRegistrationActivity](../resources/userregistrationactivitysummary.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authenticationmethodsroot-userregistrationactivity-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodsroot-userregistrationactivity-permissions.md)]

[!INCLUDE [rbac-reports-registration-usage-apis](../includes/rbac-for-apis/rbac-reports-registration-usage-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/userRegistrationActivity(period='{period}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|period|aggregationPeriod|The aggregation window to get summary for. The possible values are: `d1` (past 1 day), `d7` (past 7 days), `d30` (past 30 days). Required|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [userRegistrationActivitySummary](../resources/userregistrationactivitysummary.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationmethodsrootthis.userregistrationactivity"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/userRegistrationActivity(period='d1')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/authenticationmethodsrootthisuserregistrationactivity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/authenticationmethodsrootthisuserregistrationactivity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/authenticationmethodsrootthisuserregistrationactivity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/authenticationmethodsrootthisuserregistrationactivity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/authenticationmethodsrootthisuserregistrationactivity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/authenticationmethodsrootthisuserregistrationactivity-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/authenticationmethodsrootthisuserregistrationactivity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userRegistrationActivitySummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "97d6cbb9-9323-4b6a-b89d-b2a60907ede4",
      "feature": "registration",
      "successfulActivityCount": 1,
      "failureActivityCount": 0,
      "authMethod": "windowsHelloForBusiness"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "8998b7bb-ece5-4255-8df9-4317c8a738b8",
      "feature": "registration",
      "successfulActivityCount": 83,
      "failureActivityCount": 214,
      "authMethod": "microsoftAuthenticatorPush"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "08a64d97-bc7f-412e-9555-bdd37d5a5718",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "email"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "22233ba5-c798-4580-ac6b-03011f290869",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "mobilePhone"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "d4794a86-5d93-4d6b-a5ba-4aa52920a97c",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "officePhone"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "436d1cbe-711a-4840-bef4-f4c69fa8ad74",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "alternateMobilePhone"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "3a7b2247-5a78-4c84-964d-2eb1d2e91aa0",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "securityQuestion"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "f096f3d7-aef9-4211-9e15-a30e27cbf66b",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "softwareOneTimePasscode"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "00ee088a-c208-4c6c-827c-6701fc761607",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "hardwareOneTimePasscode"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "8784730b-22ba-457c-a024-1b8361319377",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "fido2SecurityKey"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "aa3da958-fd4b-4a3e-b59c-48637acec161",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "temporaryAccessPass"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "c1926478-acad-497d-bd33-a395286486a1",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "microsoftAuthenticatorPasswordless"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "5b6c80a7-ada6-4f0d-8fa6-9cf9d76f2a37",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "macOsSecureEnclaveKey"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "520b7dff-73ca-411e-81ca-d65ac7587ba4",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "passKeyDeviceBound"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "983c4757-9a2d-43e9-8f24-5ee01515492d",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "passKeyDeviceBoundAuthenticator"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "0170d795-c5b8-4c32-b9e7-c33d17074337",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "passKeyDeviceBoundWindowsHello"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "aa8b0e59-2555-4b1b-a8fd-d3648620bbde",
      "feature": "registration",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "externalAuthMethod"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "93557928-5cbd-4968-8c88-de78f433080a",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "email"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "5570a753-6dd8-4063-b33a-3b6b0c77871f",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "mobilePhone"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "38a1efb3-5ab1-4f54-a0fb-9cd328525fcd",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "officePhone"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "0bcc380d-f6d3-418e-8743-027fee8b038e",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "alternateMobilePhone"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "6caf72c9-e0c9-4f79-aa4d-e8625a73cd27",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "securityQuestion"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "505b68c1-7db0-4eae-83a7-3e5f1f1baa30",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "microsoftAuthenticatorPush"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "0a597d38-3a54-4300-a3f2-e7f8357b51c6",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "sms"
    },
    {
      "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
      "id": "97ee074d-1a4a-4c96-b84b-edd902849062",
      "feature": "reset",
      "successfulActivityCount": 0,
      "failureActivityCount": 0,
      "authMethod": "oneTimePasscode"
    }
  ]
}

```

