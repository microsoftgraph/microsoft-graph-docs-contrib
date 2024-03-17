---
title: "security: runHuntingQuery"
description: "Run Hunting query API"
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# security: runHuntingQuery
Namespace: microsoft.graph.security

Queries a specified set of event, activity, or entity data supported by Microsoft 365 Defender to proactively look for specific threats in your environment.

This is the method for advanced hunting in Microsoft 365 Defender. This method includes a query in Kusto Query Language (KQL). It specifies a data table in the [advanced hunting schema](/microsoft-365/security/defender/advanced-hunting-schema-tables?view=o365-worldwide&preserve-view=true) and a piped sequence of operators to filter or search that data, and format the query output in specific ways. 

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

In the request body, provide a JSON object for the parameter, `Query`, and include an optional `Timespan` parameter.

| Parameter    | Type    | Description                                                                                                                      | Example                                                            |
|:-------------|:--------|:---------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| Query        | String  | The hunting query in Kusto Query Language (KQL). For more information on KQL syntax, see [KQL quick reference](/azure/data-explorer/kql-quick-reference). |                                                                    |
| Timespan     | String (optional) | The time span for the query in Kusto Query Language (KQL). If provided, the query will be executed within this time span. If not provided, the default time span of 30 days will be used, specified in ISO 8601 format. | **Date/Date**: `"2024-02-01T08:00:00Z/2024-02-15T08:00:00Z"` - Start and end dates. **Duration/EndDate**: `"P30D/2024-02-15T08:00:00Z"` - A period before the end date. **Start/Duration**: `"2024-02-01T08:00:00Z/P30D"` - Start date and duration. **ISO8601 Duration**: `"P30D"` - Duration from now backwards. **Single Date/Time**: `"2024-02-01T08:00:00Z"` - Start time with end time defaulted to current time. |


## Response

If successful, this action returns a `200 OK` response code and a [huntingQueryResults](../resources/security-huntingqueryresults.md) in the response body.

## Examples

### Request

This example specifies a KQL query which does the following:
- Looks into the [DeviceProcessEvents](/microsoft-365/security/defender/advanced-hunting-deviceprocessevents-table?view=o365-worldwide&preserve-view=true) table in the advanced hunting schema.
- Filters on the condition that the event is initiated by the powershell.exe process.
- Specifies the output of 3 columns from the same table for each row: `Timestamp`, `FileName`, `InitiatingProcessFileName`.
- Sorts the output by the `Timestamp` value.
- Limits the output to 2 records (2 rows).


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

Example with 'timespan'

``` http
POST https://graph.microsoft.com/beta/security/runHuntingQuery
{
    "query":"DeviceProcessEvents | where InitiatingProcessFileName =~ 'powershell.exe' | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc",
    "timespan": "P28D"
}
```

```json
{
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
      "Timestamp": "2024-03-01T06:38:35.7664356Z",
      "FileName": "conhost.exe",
      "InitiatingProcessFileName": "powershell.exe"
    },
    {
      "Timestamp": "2024-03-28T06:38:30.5163363Z",
      "FileName": "conhost.exe",
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
