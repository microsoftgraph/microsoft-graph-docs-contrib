---
title: "reportRoot: getAzureADApplicationSignInSummary"
description: "Retrieve the properties and relationships of an applicationSigninSummary object."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 04/04/2024
---

# reportRoot: getAzureADApplicationSignInSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve [applicationSigninSummary](../resources/applicationsigninsummary.md) objects within either the last seven or 30 days.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getazureadapplicationsigninsummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getazureadapplicationsigninsummary-permissions.md)]

[!INCLUDE [rbac-usage-insights-apis](../includes/rbac-for-apis/rbac-usage-insights-apis.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
``` http
GET reports/getAzureADApplicationSignInSummary(period='{period}')
```

## Function parameters

| Parameter | Description |
|:----------|:----------|
| period | Either `D7` (last seven days) or `D30` (last 30 days); other values generate errors. |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [applicationSignInSummary](../resources/applicationsigninsummary.md) objects in the response body.

## Example

##### Request
Here's an example  of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applicationsigninsummary"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getAzureADApplicationSignInSummary(period='D7')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applicationsigninsummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-applicationsigninsummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applicationsigninsummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applicationsigninsummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applicationsigninsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applicationsigninsummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applicationsigninsummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applicationsigninsummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationSignInSummary"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json


{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(applicationSignInSummary)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.applicationSignInSummary",
            "id": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "successfulSignInCount": 9,
            "failedSignInCount": 0,
            "appDisplayName": "Graph Explorer",
            "successPercentage": 100
        },
        {
            "@odata.type": "#microsoft.graph.applicationSignInSummary",
            "id": "c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
            "successfulSignInCount": 2,
            "failedSignInCount": 0,
            "appDisplayName": "Azure Portal",
            "successPercentage": 100
        },
        {
            "@odata.type": "#microsoft.graph.applicationSignInSummary",
            "id": "8c59ead7-d703-4a27-9e55-c96a0054c8d2",
            "successfulSignInCount": 1,
            "failedSignInCount": 0,
            "appDisplayName": "My Profile",
            "successPercentage": 100
        },
        {
            "@odata.type": "#microsoft.graph.applicationSignInSummary",
            "id": "89bee1f7-5e6e-4d8a-9f3d-ecd601259da7",
            "successfulSignInCount": 3,
            "failedSignInCount": 0,
            "appDisplayName": "Office365 Shell WCSS-Client",
            "successPercentage": 100
        }
    ]
}
```



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get applicationSignInSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


