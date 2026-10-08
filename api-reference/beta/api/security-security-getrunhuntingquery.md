---
title: "security: getRunHuntingQuery"
description: "Run an advanced hunting query via a GET request and optionally target a specific workspace."
author: "t-naomigorny"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/31/2026
---

# security: getRunHuntingQuery
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Query a specified set of event, activity, or entity data supported by Microsoft Defender XDR to proactively look for specific threats in your environment, by using a GET request.

This function is the GET-based companion to the [runHuntingQuery](../api/security-security-runhuntingquery.md) action. It accepts a query in [Kusto Query Language (KQL)](/azure/data-explorer/kusto/query/) as a URL parameter, executes it against the [advanced hunting schema](/microsoft-365/security/defender/advanced-hunting-schema-tables?view=o365-worldwide&preserve-view=true), and returns the same [huntingQueryResults](../resources/security-huntingqueryresults.md) shape as the POST action. Use this function in scenarios that can't issue authenticated POST requests, such as Power BI dashboards that authenticate through `Web.Contents`.

Find out more about [hunting for threats across devices, emails, apps, and identities](/microsoft-365/security/defender/advanced-hunting-query-emails-devices?view=o365-worldwide&preserve-view=true). Learn about [KQL](/azure/data-explorer/kusto/query/).

For information on using advanced hunting in the [Microsoft Defender portal](/microsoft-365/security/defender/microsoft-365-defender-portal?view=o365-worldwide&preserve-view=true), see [Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](/microsoft-365/security/defender/advanced-hunting-overview?view=o365-worldwide&preserve-view=true).

> [!NOTE]
> Because the query is passed in the URL, callers whose query string exceeds infrastructure URI limits receive a `414 URI Too Long` response. Use the [runHuntingQuery](../api/security-security-runhuntingquery.md) POST action for long queries.


## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_security_getrunhuntingquery" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-security-getrunhuntingquery-permissions.md)]

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
GET /security/getRunHuntingQuery(query='{query}',timespan='{timespan}',workspaceId={workspaceId})
```

## Function parameters
In the request URL, provide the following query parameters with values.

| Parameter   | Type     | Description |
|:------------|:---------|:------------|
| query       | String   | Required. The hunting query in Kusto Query Language (KQL). For more information, see [KQL quick reference](/azure/data-explorer/kql-quick-reference). The value must be percent-encoded when called directly over REST. |
| timespan    | String   | Optional. The interval of time over which to query data, in ISO 8601 format. The default value is 30 days. If a time filter is specified in both the query and the **timespan** parameter, the shorter time span is applied. |
| workspaceId | Guid     | Optional. The GUID of a specific Log Analytics workspace to target. If omitted, the service uses the caller's primary workspace. If the workspace isn't found or not accessible, the service falls back to the caller's primary workspace. |

The following examples show the possible formats for the `timespan` parameter:

- **Date/Date**: "2026-02-01T08:00:00Z/2026-02-15T08:00:00Z" - Start and end dates.
- **Duration/endDate**: "P30D/2026-02-15T08:00:00Z" - A period before the end date.
- **Start/duration**: "2026-02-01T08:00:00Z/P30D" - Start date and duration.
- **ISO8601 duration**: "P30D" - Duration from now backwards.
- **Single date/time**: "2026-02-01T08:00:00Z" - Start time with end time defaulted to the current time.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.security.huntingQueryResults](../resources/security-huntingqueryresults.md) in the response body.

## Examples

### Example 1: Run a hunting query with GET

#### Request

The following example specifies a KQL query that:

- Looks into the [AlertInfo](/microsoft-365/security/defender/advanced-hunting-alertinfo-table?view=o365-worldwide&preserve-view=true) table in the advanced hunting schema.
- Projects two columns (`Timestamp`, `Title`).
- Limits the output to two records.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_getrunhuntingquery_example1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/getRunHuntingQuery(query='AlertInfo%20%7C%20project%20Timestamp%2C%20Title%20%7C%20take%202',timespan='P1D')
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-getrunhuntingquery-example1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.security.huntingQueryResults",
    "schema": [
        {
            "name": "Timestamp",
            "type": "DateTime"
        },
        {
            "name": "Title",
            "type": "String"
        }
    ],
    "results": [
        {
            "Timestamp": "2026-03-10T08:31:15.128Z",
            "Title": "Suspicious PowerShell command line"
        },
        {
            "Timestamp": "2026-03-10T08:29:41.017Z",
            "Title": "Credential dumping attempt detected"
        }
    ]
}
```

### Example 2: Run a hunting query against a specific workspace

#### Request

The following example shows a GET request that targets a specific Log Analytics workspace by passing the optional **workspaceId** parameter.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_getrunhuntingquery_example2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/getRunHuntingQuery(query='AlertInfo%20%7C%20project%20Timestamp%2C%20Title%20%7C%20take%202',timespan='P1D',workspaceId=00000000-0000-0000-0000-000000000001)
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-getrunhuntingquery-example2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.security.huntingQueryResults",
    "schema": [
        {
            "name": "Timestamp",
            "type": "DateTime"
        },
        {
            "name": "Title",
            "type": "String"
        }
    ],
    "results": [
        {
            "Timestamp": "2026-03-10T08:31:15.128Z",
            "Title": "Suspicious PowerShell command line"
        },
        {
            "Timestamp": "2026-03-10T08:29:41.017Z",
            "Title": "Credential dumping attempt detected"
        }
    ]
}
```
