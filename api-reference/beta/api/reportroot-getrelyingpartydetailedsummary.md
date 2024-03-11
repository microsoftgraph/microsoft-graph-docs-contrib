---
title: "reportRoot: getRelyingPartyDetailedSummary"
description: "Get a summary of AD FS relying parties information."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# reportRoot: getRelyingPartyDetailedSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a summary of AD FS relying parties information.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "reportroot-getrelyingpartydetailedsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getrelyingpartydetailedsummary-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/getRelyingPartyDetailedSummary(period='parameterValue')
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table lists the parameters that are required when you call this function.

## Optional query parameters

This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Parameter|Type|Description|
|:---|:---|:---|
|period|String|Specifies the length of time over which the report is aggregated. The supported values are: D1, D7, D30. These values follow the format `Dn` where n represents the number of days over which the report is aggregated.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportrootthis.getrelyingpartydetailedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/getRelyingPartyDetailedSummary(period='D7')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportrootthisgetrelyingpartydetailedsummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/reportrootthisgetrelyingpartydetailedsummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportrootthisgetrelyingpartydetailedsummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportrootthisgetrelyingpartydetailedsummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportrootthisgetrelyingpartydetailedsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportrootthisgetrelyingpartydetailedsummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportrootthisgetrelyingpartydetailedsummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportrootthisgetrelyingpartydetailedsummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.relyingPartyDetailedSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
        {
            "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
            "id": "31b45f83-0f5c-40be-80af-02e918f3b55b",
            "relyingPartyId": "https://customer.contoso.com/mgmt",
            "serviceId": "4cce6fff-4ccc-41fe-8521-bce16ea521e9",
            "relyingPartyName": "Contoso",
            "successfulSignInCount": 0,
            "failedSignInCount": 225,
            "totalSignInCount": 225,
            "signInSuccessRate": 0,
            "uniqueUserCount": 1,
            "migrationStatus": "ready",
            "replyUrls": [
                "https://adfshelp.microsoft.com/Contoso/tokenresponse"
            ],
            "migrationValidationDetails": [
                {
                    "name": "AdditionalWSFedEndpointCheckResult",
                    "value": "{\"result\": 0, \"message\": \"No additional WS-Federation endpoints were found.\"}"
                },
                {
                    "name": "AllowedAuthenticationClassReferencesCheckResult",
                    "value": "{\"result\": 0, \"message\": \"AllowedAuthenticationClassReferences is not set up.\"}"
                }
            ]
        }
    ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "reportRoot: getRelyingPartyDetailedSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: reportrootthis.getrelyingpartydetailedsummary/container/signInSuccessRate:
            Expected type Double but actual was Int64. Property: signInSuccessRate, actual value: '0'"
  ]
}-->
