---
title: "reportRoot: getFormsUserActivityUserCounts"
description: "Get a report that provides the total number of designers or responders who perform Microsoft Forms activities over a selected period."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "haoyli"
doc_type: apiPageType
ms.topic: reference
---

# reportRoot: getFormsUserActivityUserCounts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a report that provides the total number of designers or responders who perform Microsoft Forms activities over a selected period.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getformsuseractivityusercounts" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getformsuseractivityusercounts-permissions.md)]

> **Note:** For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user the appropriate Microsoft Entra ID limited administrator role. For more information, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } --> 

```http
GET /reports/getBrowserDistributionUserCounts(period='{period_value}')
```

## Function parameters

In the request URL, provide the following parameter with a valid value.

| Parameter | Type   | Description                                                                                                                                                                                                                                                       |
| :-------- | :----- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| period    | string | Specifies the length of time over which the report is aggregated. The supported values for {period_value} are: `D7`, `D30`, `D90`, and `D180`. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. Required. |

## Optional query parameters

This method supports the `$format` [OData query parameter](/graph/query-parameters) to customize the response. The default output type is `text/csv`. However, if you want to specify the output type, you can use the OData `$format` query parameter to set the default output to `text/csv` or `application/json`.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

### CSV

If successful, this method returns a `302 Found` response that redirects to a preauthenticated download URL for the report. That URL can be found in the `Location` header in the response.

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and don't require an `Authorization` header.

The CSV file has the following headers for columns:

- Report Refresh Date
- Report Period
- Designers
- Respondents
- TotalUsers

### JSON

If successful, this method returns a `200 OK` response code and a JSON object in the response body.

## Examples

### Example 1: CSV output

Here's an example that outputs CSV.

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "reportroot_getformsuseractivityusercounts_csv"
}-->
```http
GET https://graph.microsoft.com/beta/reports/getFormsUserActivityUserCounts(period='D7')?$format=text/csv
```

#### Response

The following example shows the response.

<!-- { "blockType": "response" } -->
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

Report Refresh Date, Report Period, Designers, Respondents, Total Users
```

### Example 2: JSON output

Here's an example that returns JSON.

#### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "reportroot_getformsuseractivityusercounts_json"
}-->
```http
GET https://graph.microsoft.com/beta/reports/getFormsUserActivityUserCounts(period='D7')?$format=application/json
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 294

{
    "value": [
        {
            "reportRefreshDate": "2022-06-08",
            "reportPeriod": 7,
            "formsUsageUserCountsByDate": [
                {
                    "reportDate": "2022-06-08",
                    "designers": 5117,
                    "respondents": 19061,
                    "totalUsers": 22539
                },
                {
                    "reportDate": "2022-06-07",
                    "designers": 5245,
                    "respondents": 19820,
                    "totalUsers": 23269
                },
                {
                    "reportDate": "2022-06-06",
                    "designers": 4750,
                    "respondents": 18439,
                    "totalUsers": 21624
                },
                {
                    "reportDate": "2022-06-05",
                    "designers": 467,
                    "respondents": 1726,
                    "totalUsers": 2103
                },
                {
                    "reportDate": "2022-06-04",
                    "designers": 476,
                    "respondents": 1692,
                    "totalUsers": 2086
                },
                {
                    "reportDate": "2022-06-03",
                    "designers": 3853,
                    "respondents": 14491,
                    "totalUsers": 17185
                },
                {
                    "reportDate": "2022-06-02",
                    "designers": 4657,
                    "respondents": 19798,
                    "totalUsers": 22930
                }
            ]
        }
    ]
}
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
