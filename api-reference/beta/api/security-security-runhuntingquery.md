---
title: "security: runHuntingQuery"
description: "Run the hunting query API."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/28/2024
---

# security: runHuntingQuery
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Query a specified set of event, activity, or entity data supported by Microsoft Defender XDR to proactively look for specific threats in your environment.

This method is for advanced hunting in Microsoft Defender XDR. This method includes a query in Kusto Query Language (KQL). It specifies a data table in the [advanced hunting schema](/microsoft-365/security/defender/advanced-hunting-schema-tables?view=o365-worldwide&preserve-view=true) and a piped sequence of operators to filter or search that data and format the query output in specific ways. 

Find out more about [hunting for threats across devices, emails, apps, and identities](/microsoft-365/security/defender/advanced-hunting-query-emails-devices?view=o365-worldwide&preserve-view=true). Learn about [KQL](/azure/data-explorer/kusto/query/).

For information on using advanced hunting in the [Microsoft Defender portal](/microsoft-365/security/defender/microsoft-365-defender-portal?view=o365-worldwide&preserve-view=true), see [Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](/microsoft-365/security/defender/advanced-hunting-overview?view=o365-worldwide&preserve-view=true).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_security_runhuntingquery" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-security-runhuntingquery-permissions.md)]

> [!IMPORTANT]
> The signed-in user also needs one of the following roles:
>
> - A [Microsoft Defender XDR Unified role-based access control (RBAC) role](/microsoft-365/security/defender/manage-rbac) that grants advanced hunting access.
> - A [Microsoft Entra ID role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) that provides only the least privilege necessary: Security Reader, Global Reader, Security Operator, or Security Administrator.

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/runHuntingQuery
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

> [!NOTE]
> If you're using non-ANSI characters in your query, for example, to query email subjects with malformed or lookalike characters, use `application/json; charset=utf-8` for the Content-Type header.

## Request body

In the request body, provide a JSON object for the `query` parameter, and optionally include a `timespan` parameter and a `workspaceId` parameter.

| Parameter    | Type            | Description                                                                                                                      | Example                                                            |
|:-------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| query        | String          | Required. The hunting query in Kusto Query Language (KQL). For more information, see [KQL quick reference](/azure/data-explorer/kql-quick-reference). |                                                                    |
| timespan     | String          | Optional. The interval of time over which to query data, in ISO 8601 format. The default value is 30 days. If a time filter is specified in both the query and the **timespan** parameter, the shorter time span is applied. | |
| workspaceId  | Guid            | Optional. The GUID of a specific Log Analytics workspace to target. If omitted, the service uses the caller's primary workspace. If the workspace isn't found or not accessible, the service falls back to the caller's primary workspace. | `00000000-0000-0000-0000-000000000001` |

The following examples show the possible formats for the `timespan` parameter:

- **Date/Date**: "2024-02-01T08:00:00Z/2024-02-15T08:00:00Z" - Start and end dates.
- **Duration/endDate**: "P30D/2024-02-15T08:00:00Z" - A period before the end date.
- **Start/duration**: "2024-02-01T08:00:00Z/P30D" - Start date and duration.
- **ISO8601 duration**: "P30D" - Duration from now backwards.
- **Single date/time**: "2024-02-01T08:00:00Z" - Start time with end time defaulted to the current time.

## Response

If successful, this action returns a `200 OK` response code and a [huntingQueryResults](../resources/security-huntingqueryresults.md) in the response body.

## Examples

### Example 1: Query with default timespan

#### Request

The following example specifies a KQL query and:
- Looks into the [DeviceProcessEvents](/microsoft-365/security/defender/advanced-hunting-deviceprocessevents-table?view=o365-worldwide&preserve-view=true) table in the advanced hunting schema.
- Filters on the condition that the powershell.exe process initiates the event.
- Specifies the output of three columns from the same table for each row: `Timestamp`, `FileName`, `InitiatingProcessFileName`.
- Sorts the output by the `Timestamp` value.
- Limits the output to two records (two rows).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_runhuntingquery_example1"
}
-->
```http
POST https://graph.microsoft.com/beta/security/runHuntingQuery

{
    "query": "DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-runhuntingquery-example1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-runhuntingquery-example1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-runhuntingquery-example1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-runhuntingquery-example1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-runhuntingquery-example1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-runhuntingquery-example1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-runhuntingquery-example1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.huntingQueryResults",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.security.huntingQueryResults",
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

This example specifies a KQL query and looks into the [deviceProcessEvents](/microsoft-365/security/defender/advanced-hunting-deviceprocessevents-table?view=o365-worldwide&preserve-view=true) table in the advanced hunting schema 60 days back.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_runhuntingquery_example2"
}
-->
```http
POST https://graph.microsoft.com/beta/security/runHuntingQuery

{
    "query": "DeviceProcessEvents",
    "timespan": "P90D"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-runhuntingquery-example2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-runhuntingquery-example2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-runhuntingquery-example2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-runhuntingquery-example2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-runhuntingquery-example2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-runhuntingquery-example2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-runhuntingquery-example2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.huntingQueryResults",
  "truncated": true
}
-->

```http
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

### Example 3: Query against a specific workspace

#### Request

The following example specifies a KQL query and targets a specific Log Analytics workspace by passing the optional **workspaceId** parameter.

<!-- {
  "blockType": "request",
  "name": "security_runhuntingquery_example3"
}
-->
```http
POST https://graph.microsoft.com/beta/security/runHuntingQuery
Content-Type: application/json

{
    "query": "DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2",
    "timespan": "P1D",
    "workspaceId": "00000000-0000-0000-0000-000000000001"
}
```

#### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.huntingQueryResults",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

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
            "Timestamp": "2026-03-10T06:38:35.766Z",
            "FileName": "conhost.exe",
            "InitiatingProcessFileName": "powershell.exe"
        },
        {
            "Timestamp": "2026-03-10T06:38:30.516Z",
            "FileName": "conhost.exe",
            "InitiatingProcessFileName": "powershell.exe"
        }
    ]
}
```