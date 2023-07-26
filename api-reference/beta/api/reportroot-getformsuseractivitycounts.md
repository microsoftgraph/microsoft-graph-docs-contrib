---
title: "reportRoot: getFormsUserActivityCounts"
description: "Get a report that provides the trend of activity count by activity type over a selected period."
ms.localizationpriority: medium
ms.prod: "reports"
author: "haoyli"
doc_type: apiPageType
---

# reportRoot: getFormsUserActivityCounts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a report that provides the trend of activity count by activity type over a selected period.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| -------------------------------------- | ------------------------------------------- |
| Delegated (work or school account)     | Reports.Read.All                            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Reports.Read.All                            |

> **Note:** For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user the appropriate Azure Active Directory limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } --> 

```http
GET /reports/getFormsUserActivityCounts(period='{period_value}')
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
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

### CSV

If successful, this method returns a `302 Found` response that redirects to a preauthenticated download URL for the report. That URL can be found in the `Location` header in the response.

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header.

The CSV file has the following headers for columns:

- Report Refresh Date
- Report Period
- Forms
- Authenticated responses
- Anonymous responses

### JSON

If successful, this method returns a `200 OK` response code and a JSON object in the response body.

## Examples

### Example 1: CSV output

The following is an example that outputs CSV.

#### Request

The following is an example of a request.

<!-- {
  "blockType": "ignored",
  "name": "reportroot_getformsuseractivitycounts_csv"
}-->
```http
GET https://graph.microsoft.com/beta/reports/getFormsUserActivityCounts
(period='D7')?$format=text/csv
```

#### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the CSV file that downloads will have the following schema.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

Report Refresh Date, Report Period, Forms, Authenticated in responses, Anonymous responses
```

### Example 2: JSON output

The following is an example that returns JSON.

#### Request

The following is an example of a request.

<!-- {
  "blockType": "ignored",
  "name": "reportroot_getformsuseractivitycounts_json"
}-->
```http
GET https://graph.microsoft.com/beta/reports/getFormsUserActivityCounts(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.

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
            "reportRefreshDate": "2022-06-12",
            "reportPeriod": 7,
            "formsUsageActivityCountsByDate": [
                {
                    "reportDate": "2022-06-12",
                    "forms": 366,
                    "authenticatedResponses": 2329,
                    "anonymousResponses": 2428
                },
                {
                    "reportDate": "2022-06-11",
                    "forms": 56,
                    "authenticatedResponses": 2149,
                    "anonymousResponses": 2243
                },
                {
                    "reportDate": "2022-06-10",
                    "forms": 953,
                    "authenticatedResponses": 16749,
                    "anonymousResponses": 7865
                },
                {
                    "reportDate": "2022-06-09",
                    "forms": 1210,
                    "authenticatedResponses": 19470,
                    "anonymousResponses": 10063
                },
                {
                    "reportDate": "2022-06-08",
                    "forms": 1319,
                    "authenticatedResponses": 19745,
                    "anonymousResponses": 11256
                },
                {
                    "reportDate": "2022-06-07",
                    "forms": 1413,
                    "authenticatedResponses": 20701,
                    "anonymousResponses": 11003
                },
                {
                    "reportDate": "2022-06-06",
                    "forms": 1461,
                    "authenticatedResponses": 18838,
                    "anonymousResponses": 9016
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
