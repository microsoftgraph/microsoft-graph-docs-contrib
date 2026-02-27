---
title: "reportRoot: getMicrosoft365CopilotUsageUserDetail"
description: "Get the most recent activity data for enabled users of Microsoft 365 Copilot apps."
author: "GGsmile"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
ms.date: 01/08/2025
---

# reportRoot: getMicrosoft365CopilotUsageUserDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!NOTE]
> Going forward, use the Microsoft 365 Copilot usage APIs under the `/copilot` URL path segment. For more information, see [Copilot report root](/microsoft-365-copilot/extensibility/api/admin-settings/reports/resources/copilotreportroot) and [Get Copilot usage user detail](/microsoft-365-copilot/extensibility/api/admin-settings/reports/copilotreportroot-getmicrosoft365copilotusageuserdetail).

Get the most recent activity data for enabled users of Microsoft 365 Copilot apps.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getmicrosoft365copilotusageuserdetail" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getmicrosoft365copilotusageuserdetail-permissions.md)]

[!INCLUDE [rbac-m365-copilot-apis](../includes/rbac-for-apis/rbac-m365-copilot-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /reports/getMicrosoft365CopilotUsageUserDetail(period='{period_value}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|period|String|The number of previous days over which to report aggregated usage. The supported values are: `D7`, `D30`, `D90`, `D180`, `ALL`. The first four values follow the format Dn where n represents the number of previous days over which to aggregate data. `ALL` indicates to report usage for 7, 30, 90, and 180 days.|

## Optional query parameters

This method supports the `$format` [OData query parameter](/graph/query-parameters) to customize the response. The default output type is `application/json`. However, if you want to specify the output type, you can use the OData `$format` query parameter to set the default output to `text/csv` or `application/json`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

### CSV

If successful, this method returns a `302 Found` response that redirects to a preauthenticated download URL for the report. That URL can be found in the `Location` header in the response.

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and don't require an `Authorization` header.

The CSV file has the following headers for columns.

- Report Refresh Date
- Report Period
- User Principal Name
- Display Name
- Last Activity Date
- Microsoft Teams Copilot Last Activity Date
- Word Copilot Last Activity Date
- Excel Copilot Last Activity Date
- PowerPoint Copilot Last Activity Date
- Outlook Copilot Last Activity Date
- OneNote Copilot Last Activity Date
- Loop Copilot Last Activity Date
- Copilot Chat Last Activity Date

### JSON

If successful, this method returns a `200 OK` response code and a JSON object in the response body.

## Examples

### Example 1: CSV output

The following example returns a URL for a CSV file.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportroot_getmicrosoft365copilotusageuserdetail_csv"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D7')?$format=text/csv
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getmicrosoft365copilotusageuserdetail-csv-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportroot-getmicrosoft365copilotusageuserdetail-csv-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportroot-getmicrosoft365copilotusageuserdetail-csv-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportroot-getmicrosoft365copilotusageuserdetail-csv-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportroot-getmicrosoft365copilotusageuserdetail-csv-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportroot-getmicrosoft365copilotusageuserdetail-csv-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportroot-getmicrosoft365copilotusageuserdetail-csv-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

The CSV file in the `Location` header of the 302 response has the following schema.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

Report Refresh Date,Report Period,User Principal Name,Display Name,Last Activity Date,Microsoft Teams Copilot Last Activity Date,Word Copilot Last Activity Date,Excel Copilot Last Activity Date,PowerPoint Copilot Last Activity Date,Outlook Copilot Last Activity Date,OneNote Copilot Last Activity Date,Loop Copilot Last Activity Date,Copilot Chat Last Activity Date
```

### Example 2: JSON output

The following example returns JSON data.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportroot_getmicrosoft365copilotusageuserdetail_json"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D7')?$format=application/json
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getmicrosoft365copilotusageuserdetail-json-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportroot-getmicrosoft365copilotusageuserdetail-json-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportroot-getmicrosoft365copilotusageuserdetail-json-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportroot-getmicrosoft365copilotusageuserdetail-json-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportroot-getmicrosoft365copilotusageuserdetail-json-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportroot-getmicrosoft365copilotusageuserdetail-json-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportroot-getmicrosoft365copilotusageuserdetail-json-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 10747

{
    "@odata.nextLink": "https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D7')?$format=application/json&$skiptoken=MDoyOg",
    "value": [
        {
            "reportRefreshDate": "2024-08-20",
            "userPrincipalName": "DC8C64D6EC3A3AA17481D7E5EB5B68A6",
            "displayName": "C65E8D8AFA0DAB9639EDFAAEA94AFE66",
            "lastActivityDate": "2024-08-20",
            "copilotChatLastActivityDate": "2024-08-16",
            "microsoftTeamsCopilotLastActivityDate": "2024-08-20",
            "wordCopilotLastActivityDate": "2024-08-06",
            "excelCopilotLastActivityDate": "",
            "powerPointCopilotLastActivityDate": "2024-03-26",
            "outlookCopilotLastActivityDate": "",
            "oneNoteCopilotLastActivityDate": "",
            "loopCopilotLastActivityDate": "",
            "copilotActivityUserDetailsByPeriod": [
                {
                    "reportPeriod": 7
                }
            ]
        }
    ]
}
```
