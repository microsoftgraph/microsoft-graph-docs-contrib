---
title: "reportRoot: getMicrosoft365CopilotUsageUserDetail"
description: "**TODO: Add Description**"
author: "GGsmile"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# reportRoot: getMicrosoft365CopilotUsageUserDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the most recent activity date for enabled users of Microsoft 365 Copilot apps.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "reportroot-getmicrosoft365copilotusageuserdetail-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getmicrosoft365copilotusageuserdetail-permissions.md)]

> **Note**: For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user the appropriate Microsoft Entra ID limited administrator role. For more information, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/getMicrosoft365CopilotUsageUserDetail(period='{period_value}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|period|String|Specifies the length of time over which the report is aggregated. The supported values are: `D7`, `D30`, `D90`, `D180`, `ALL`. These values follow the format Dn where n represents the number of days over which the report is aggregated. ALL Specify the data for all period.|

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

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header.

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

The following is an example that outputs CSV.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportrootthis.getmicrosoft365copilotusageuserdetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D7')?$format=text/csv
```

#### Response

The following example shows the response.

<!-- { "blockType": "response" } --> 
``` http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the CSV file that downloads have the following schema.

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

The following is an example that returns JSON.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportrootthis.getmicrosoft365copilotusageuserdetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D7')?$format=application/json
```

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
    "@odata.context": "https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D7')?$format=application/json",
    "value": [
        {
            "reportRefreshDate": "2024-06-26",
            "userPrincipalName": "DC8C64D6EC3A3AA17481D7E5EB5B68A6",
            "displayName": "C65E8D8AFA0DAB9639EDFAAEA94AFE66",
            "lastActivityDate": "2024-06-12",
            "copilotChatLastActivityDate": "2024-01-10",
            "microsoftTeamsCopilotLastActivityDate": "2024-06-12",
            "wordCopilotLastActivityDate": "2024-03-29",
            "excelCopilotLastActivityDate": null,
            "powerPointCopilotLastActivityDate": "2024-03-26",
            "outlookCopilotLastActivityDate": null,
            "oneNoteCopilotLastActivityDate": null,
            "loopCopilotLastActivityDate": null,
            "copilotActivityUserDetailsByPeriod": [
                {
                    "reportPeriod": 7,
                }
            ]
        }
    ]
}
```
