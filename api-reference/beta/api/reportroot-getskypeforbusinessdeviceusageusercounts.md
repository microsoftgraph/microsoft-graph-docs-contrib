---
title: "reportRoot: getSkypeForBusinessDeviceUsageUserCounts"
description: "Get the usage trends on how many users in your organization have connected using the Skype for Business app. You'll also get a breakdown by the type of device (Windows, Windows phone, Android phone, iPhone, or iPad) on which the Skype for Business client app is installed and used across your organization."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "sarahwxy"
doc_type: apiPageType
ms.topic: reference
---

# reportRoot: getSkypeForBusinessDeviceUsageUserCounts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the usage trends on how many users in your organization have connected using the Skype for Business app. You'll also get a breakdown by the type of device (Windows, Windows phone, Android phone, iPhone, or iPad) on which the Skype for Business client app is installed and used across your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Skype for Business clients used](https://support.office.com/client/Skype-for-Business-clients-used-b9019c36-034f-40c7-acb0-c2a0400b03c3).

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getskypeforbusinessdeviceusageusercounts" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getskypeforbusinessdeviceusageusercounts-permissions.md)]

**Note**: For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user the appropriate Microsoft Entra ID limited administrator role. For more information, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } --> 

```http
GET /reports/getSkypeForBusinessDeviceUsageUserCounts(period='{period_value}')
```

## Function parameters

In the request URL, provide the following parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the length of time over which the report is aggregated. The supported values for {period_value} are: D7, D30, D90, and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. Required. |

This method supports the `$format` [OData query parameter](/graph/query-parameters) to customize the response. The default output type is text/csv. However, if you want to specify the output type, you can use the OData $format query parameter set to text/csv or application/json.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

### CSV

If successful, this method returns a `302 Found` response that redirects to a preauthenticated download URL for the report. That URL can be found in the `Location` header in the response.

Preauthenticated download URLs are only valid for a short period of time (a few minutes) and don't require an `Authorization` header.

The CSV file has the following headers for columns.

- Report Refresh Date
- Windows
- Windows Phone
- Android Phone
- iPhone
- iPad
- Report Date
- Report Period

### JSON

If successful, this method returns a `200 OK` response code and a JSON object in the response body.

## Example

### CSV

Here's an example that outputs CSV.

#### Request

The following example shows a request.


<!-- {
  "blockType": "ignored",
  "name": "reportroot_getskypeforbusinessdeviceusageusercounts_csv"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSkypeForBusinessDeviceUsageUserCounts(period='D7')?$format=text/csv
```


#### Response

The following example shows the response.

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

Report Refresh Date,Windows,Windows Phone,Android Phone,iPhone,iPad,Report Date,Report Period
```

### JSON

Here's an example that returns JSON.

#### Request

The following example shows a request.


<!-- {
  "blockType": "ignored",
  "name": "reportroot_getskypeforbusinessdeviceusageusercounts_json"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSkypeForBusinessDeviceUsageUserCounts(period='D7')?$format=application/json
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
Content-Length: 289

{
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "windows": 403, 
      "windowsPhone": 2, 
      "androidPhone": 13, 
      "iPhone": 26, 
      "iPad": 0, 
      "reportDate": "2017-09-01", 
      "reportPeriod": "7"
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
