---
title: "reportRoot: getTeamsTeamActivityDetail"
description: "Get details about Microsoft Teams activity by team. The numbers include activities for both licensed and nonlicensed users."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "haoyli"
doc_type: apiPageType
---

# reportRoot: getTeamsTeamActivityDetail

Namespace: microsoft.graph

Get details about Microsoft Teams activity by team. The numbers include activities for both licensed and nonlicensed users.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getteamsteamactivitydetail" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getteamsteamactivitydetail-permissions.md)]

> **Note:** For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user the appropriate Microsoft Entra ID limited administrator role. For more information, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/getTeamsTeamActivityDetail(period='{period_value}')
```

## Function parameters

In the request URL, provide the following parameters with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the length of time over which the report is aggregated. The supported values for {period_value} are: `D7`, `D30`, `D90`, and `D180`. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. Required. |
| date      | Date   | Specifies the date for which you would like to view details about activities across one or more teams. {date_value} must have a format of YYYY-MM-DD. As this report is only available for the past 30 days, {date_value} should be a date from that range. |

> **Note:** You need to set either **period** or **date** in the request URL.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `302 Found` response that redirects to a preauthenticated download URL for the report. That URL can be found in the `Location` header in the response.

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and don't require an `Authorization` header.

The CSV file has the following headers for columns:

- Report Refresh Date
- Team Name
- Team Id
- Team type
- Last Activity Date
- Report Period
- Active users
- Active Channels
- Guests
- Reactions
- Meetings Organized
- Post Messages
- Reply Messages
- Channel Messages
- Urgent Messages
- Mentions
- Active Shared Channels
- Active External Users

## Examples

Here's an example that outputs CSV.

### Request

Here's an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportroot_getteamsuseractivitytotalusercounts_csv"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/reports/getTeamsTeamActivityDetail(period='D7')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportroot-getteamsuseractivitytotalusercounts-csv-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/reportroot-getteamsuseractivitytotalusercounts-csv-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportroot-getteamsuseractivitytotalusercounts-csv-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportroot-getteamsuseractivitytotalusercounts-csv-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportroot-getteamsuseractivitytotalusercounts-csv-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportroot-getteamsuseractivitytotalusercounts-csv-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportroot-getteamsuseractivitytotalusercounts-csv-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of the response.

<!-- { "blockType": "ignored" } --> 

```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the CSV file that downloads have the following schema.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

Report Refresh Date,Team Name,Team Id,Team Type,Last Activity Date,Report Period,Active Users,Active Channels,Guests,Reactions,Meetings Organized,Post Messages,Reply Messages,Channel Messages,Urgent Messages,Mentions,Active Shared Channels,Active External Users
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79 
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Example",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
