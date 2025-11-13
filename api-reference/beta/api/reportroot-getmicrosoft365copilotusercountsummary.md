---
title: "reportRoot: getMicrosoft365CopilotUserCountSummary"
description: "Get the aggregated number of active and enabled users of Microsoft 365 Copilot for a specified time period."
author: "GGsmile"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
ms.date: 10/01/2024
---

# reportRoot: getMicrosoft365CopilotUserCountSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the aggregated number of active and enabled users of Microsoft 365 Copilot for a specified time period.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getmicrosoft365copilotusercountsummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getmicrosoft365copilotusercountsummary-permissions.md)]

[!INCLUDE [rbac-m365-copilot-apis](../includes/rbac-for-apis/rbac-m365-copilot-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /reports/getMicrosoft365CopilotUserCountSummary(period='{period_value}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|period|String|The number of previous days over which to report aggregated usage. The supported values are: `D7`, `D30`, `D90`, `D180`, `ALL`. The first four values follow the format Dn where n represents the number of days over which to aggregate data. `ALL` indicates to report usage for 7, 30, 90, and 180 days.|

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
- Any App Enabled Users
- Any App Active Users
- Microsoft Teams Enabled Users
- Microsoft Teams Active Users  
- Word Enabled Users
- Word Active Users
- PowerPoint Enabled Users
- PowerPoint Active Users
- Outlook Enabled Users
- Outlook Active Users
- Excel Enabled Users
- Excel Active Users
- OneNote Enabled Users
- OneNote Active Users
- Loop Enabled Users
- Loop Active Users
- Copilot Chat Enabled Users
- Copilot Chat Active Users

### JSON

If successful, this method returns a `200 OK` response code and a JSON object in the response body.

## Examples

### Example 1: CSV output

The following example outputs a URL for a CSV file.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportroot_getmicrosoft365copilotusercountsummary_csv"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUserCountSummary(period='D7')?$format=text/csv
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getmicrosoft365copilotusercountsummary-csv-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportroot-getmicrosoft365copilotusercountsummary-csv-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportroot-getmicrosoft365copilotusercountsummary-csv-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportroot-getmicrosoft365copilotusercountsummary-csv-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportroot-getmicrosoft365copilotusercountsummary-csv-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportroot-getmicrosoft365copilotusercountsummary-csv-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportroot-getmicrosoft365copilotusercountsummary-csv-python-snippets.md)]
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

Report Refresh Date,Report Period,Any App Enabled Users,Any App Active Users,Microsoft Teams Enabled Users,Microsoft Teams Active Users  ,Word Enabled Users,Word Active Users,PowerPoint Enabled Users,PowerPoint Active Users,Outlook Enabled Users,Outlook Active Users,Excel Enabled Users,Excel Active Users,OneNote Enabled Users,OneNote Active Users,Loop Enabled Users,Loop Active Users,Copilot Chat Enabled Users,Copilot Chat Active Users
```

### Example 2: JSON output

The following example returns JSON data.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportroot_getmicrosoft365copilotusercountsummary_json"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUserCountSummary(period='D7')?$format=application/json
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getmicrosoft365copilotusercountsummary-json-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportroot-getmicrosoft365copilotusercountsummary-json-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportroot-getmicrosoft365copilotusercountsummary-json-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportroot-getmicrosoft365copilotusercountsummary-json-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportroot-getmicrosoft365copilotusercountsummary-json-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reportroot-getmicrosoft365copilotusercountsummary-json-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportroot-getmicrosoft365copilotusercountsummary-json-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 537

{
    "value": [
        {
            "reportRefreshDate": "2024-08-20",
            "adoptionByProduct": [
                {
                    "reportPeriod": 7,
                    "anyAppEnabledUsers": 359229,
                    "anyAppActiveUsers": 165115,
                    "microsoftTeamsEnabledUsers": 359096,
                    "microsoftTeamsActiveUsers": 123341,
                    "wordEnabledUsers": 359096,
                    "wordActiveUsers": 21459,
                    "powerPointEnabledUsers": 359096,
                    "powerPointActiveUsers": 8530,
                    "outlookEnabledUsers": 359096,
                    "outlookActiveUsers": 37270,
                    "excelEnabledUsers": 359096,
                    "excelActiveUsers": 6709,
                    "oneNoteEnabledUsers": 359096,
                    "oneNoteActiveUsers": 1660,
                    "loopEnabledUsers": 359096,
                    "loopActiveUsers": 1345,
                    "copilotChatEnabledUsers": 359096,
                    "copilotChatActiveUsers": 65480
                }
            ]
        }
    ]
}
```
