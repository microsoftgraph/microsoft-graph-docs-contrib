---
title: "security: runHuntingQuery"
description: "Run the hunting query API."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# security: runHuntingQuery
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Queries a specified set of event, activity, or entity data supported by Microsoft 365 Defender to proactively look for specific threats in your environment.

This method is for advanced hunting in Microsoft 365 Defender. This method includes a query in Kusto Query Language (KQL). It specifies a data table in the [advanced hunting schema](/microsoft-365/security/defender/advanced-hunting-schema-tables?view=o365-worldwide&preserve-view=true) and a piped sequence of operators to filter or search that data and format the query output in specific ways. 

Find out more about [hunting for threats across devices, emails, apps, and identities](/microsoft-365/security/defender/advanced-hunting-query-emails-devices?view=o365-worldwide&preserve-view=true). Learn about [KQL](/azure/data-explorer/kusto/query/).

For information on using advanced hunting in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender-portal?view=o365-worldwide&preserve-view=true), see [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](/microsoft-365/security/defender/advanced-hunting-overview?view=o365-worldwide&preserve-view=true).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_security_runhuntingquery" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-security-runhuntingquery-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/runHuntingQuery
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

> [!NOTE]
> If you're using non-ANSI characters in your query, for example to query email subjects with malformed or lookalike characters, use `application/json; charset=utf-8` for the Content-Type header. 

## Request body

In the request body, provide a JSON object for the `Query` parameter, and optionally include a `Timespan` parameter.

| Parameter    | Type            | Description                                                                                                                      | Example                                                            |
|:-------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| Query        | String          | Required. The hunting query in Kusto Query Language (KQL). For more information, see [KQL quick reference](/azure/data-explorer/kql-quick-reference). |                                                                    |
| Timespan     | String          | Optional. Interval of time over which to query data, in ISO 8601 format. Default value is 30 days, meaning if no startTime is specified, the query looks back 30 days from now. If a time filter is specified in both the query and the startTime parameter, the shorter time span is applied. For example, if the query has a filter for the last 7 days and the startTime is 10 days ago, the query only looks back seven days. | |

## Response

If successful, this action returns a `200 OK` response code and a [huntingQueryResults](../resources/security-huntingqueryresults.md) in the response body.

## Examples

### Timespan format examples
- **Date/Date**: "2024-02-01T08:00:00Z/2024-02-15T08:00:00Z" - Start and end dates.
- **Duration/EndDate**: "P30D/2024-02-15T08:00:00Z" - A period before the end date.
- **Start/Duration**: "2024-02-01T08:00:00Z/P30D" - Start date and duration.
- **ISO8601 Duration**: "P30D" - Duration from now backwards.
- **Single Date/Time**: "2024-02-01T08:00:00Z" - Start time with end time defaulted to the current time.

### Example 1: Query with default timespan

#### Request

The following example specifies a KQL query that does the following:
- Looks into the [DeviceProcessEvents](/microsoft-365/security/defender/advanced-hunting-deviceprocessevents-table?view=o365-worldwide&preserve-view=true) table in the advanced hunting schema.
- Filters on the condition that the powershell.exe process initiates the event.
- Specifies the output of three columns from the same table for each row: `Timestamp`, `FileName`, `InitiatingProcessFileName`.
- Sorts the output by the `Timestamp` value.
- Limits the output to two records (two rows).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_runhuntingquery"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/runHuntingQuery

{
    "Query": "DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2"
}
```

#### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.security.huntingQueryResults",
    "schema": [
        {
            "name": "Timestamp",
            "type": "DateTime"
        },
        {
            "name": "FileName",
            "type": "String"
        },
        {
            "name": "InitiatingProcessFileName",
            "type": "String"
        }
    ],
    "results": [
        {
            "Timestamp": "2024-03-26T09:39:50.7688641Z",
            "FileName": "cmd.exe",
            "InitiatingProcessFileName": "powershell.exe"
        },
        {
            "Timestamp": "2024-03-26T09:39:49.4353788Z",
            "FileName": "cmd.exe",
            "InitiatingProcessFileName": "powershell.exe"
        }
    ]
}
```

### Example 2: Query with optional the timespan parameter specified

#### Request

This example specifies a KQL query and looks into the [DeviceProcessEvents](/microsoft-365/security/defender/advanced-hunting-deviceprocessevents-table?view=o365-worldwide&preserve-view=true) table in the advanced hunting schema 60 days back. 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_runhuntingquery"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/runHuntingQuery

{
    "Query": "DeviceProcessEvents",
    "Timespan": "P90D"
}
```

#### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.security.huntingQueryResults",
    "schema": [
        {
            "name": "Timestamp",
            "type": "DateTime"
        },
        {
            "name": "FileName",
            "type": "String"
        },
        {
            "name": "InitiatingProcessFileName",
            "type": "String"
        }
    ],
    "results": [
        {
            "Timestamp": "2024-12-26T09:39:50.7688641Z",
            "FileName": "cmd.exe",
            "InitiatingProcessFileName": "powershell.exe"
        },
        {
            "Timestamp": "2024-09-26T09:39:49.4353788Z",
            "FileName": "explorer.exe",
            "InitiatingProcessFileName": "cmd.exe"
        },
        {
            "Timestamp": "2024-06-26T09:39:49.4353788Z",
            "FileName": "notepad.exe",
            "InitiatingProcessFileName": "explorer.exe"
        },
        {
            "Timestamp": "2024-03-26T09:39:49.4353788Z",
            "FileName": "cmd.exe",
            "InitiatingProcessFileName": "powershell.exe"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-runhuntingquery-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/security-runhuntingquery-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-runhuntingquery-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-runhuntingquery-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-runhuntingquery-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-runhuntingquery-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-runhuntingquery-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-runhuntingquery-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.huntingQueryResults"
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "schema": [
        {
            "Name": "Timestamp",
            "Type": "DateTime"
        },
        {
            "Name": "FileName",
            "Type": "String"
        },
        {
            "Name": "InitiatingProcessFileName",
            "Type": "String"
        }
    ],
    "results": [
        {
            "Timestamp": "2020-08-30T06:38:35.7664356Z",
            "FileName": "conhost.exe",
            "InitiatingProcessFileName": "powershell.exe"
        },
        {
            "Timestamp": "2020-08-30T06:38:30.5163363Z",
            "FileName": "conhost.exe",
            "InitiatingProcessFileName": "powershell.exe"
        }
    ]
}
```
