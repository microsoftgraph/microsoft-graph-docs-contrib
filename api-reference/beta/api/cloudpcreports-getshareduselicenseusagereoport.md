---
title: "cloudPcReports: getSharedUseLicenseUsageReport"
description: "Get the Shared Use license usage reports, such as servicePlanId, licenseCount, claimedLicenseCount and so on, for Real time, 7 days or 28 days trend."
author: "rbayetov"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getSharedUseLicenseUsageReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the Shared Use license usage reports, such as servicePlanId, licenseCount, claimedLicenseCount and so on, for Real time, 7 days or 28 days trend.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CloudPC.Read.All, CloudPC.ReadWrite.All     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getSharedUseLicenseUsageReport
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter  | Type              | Description                                                                                  |
| :--------- | :---------------- | :------------------------------------------------------------------------------------------- |
| reportName | String            | Specify report name                                                                          |
| filter     | String            | OData filter syntax. Supported filters include `and`, `or`, `lt`, `le`, `gt`, `ge` and `eq`. |
| select     | String collection | OData select syntax. Represents the selected columns of the reports.                         |
| search     | String            | Specifies a string to search                                                                 |
| groupBy    | String collection | Specify how to group the reports. If used, must have the same contents as select parameter   |
| orderBy    | String collection | Specify how to sort the reports.                                                             |
| skip       | Int32             | Number of records to skip.                                                                   |
| top        | Int32             | The number of top records to return.                                                         |

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getdailyaggregatedremoteconnectionreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getSharedUseLicenseUsageReport
Content-Type: application/json
Content-length: 199

{
    "reportName": "SharedUseLicenseUsageReport",
    "filter": "reportDateTime gt 2022-07-14T07:40:41.694Z and servicePlanId eq '599fe3a3-0285-4e7f-9c83-ffdf37914e27'",
    "select":["servicePlanId", "licenseCount", "bufferSize", "claimedLicenseCount", "waitlistedCount", "reportDateTime"],
    "skip": 0,
    "top": 50
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetdailyaggregatedremoteconnectionreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
    "TotalRowCount": 2,
    "Schema": [
        {
            "Column": "servicePlanId",
            "PropertyType": "String"
        }, 
        {
            "Column": "licenseCount",
            "PropertyType": "Int64"
        }, 
        {
            "Column": "bufferSize",
            "PropertyType": "Int64"
        }, 
        {
            "Column": "claimedLicenseCount",
            "PropertyType": "Int64"
        }, 
        {
            "Column": "waitlistedCount",
            "PropertyType": "Int64"
        }, 
        {
            "Column": "reportDateTime",
            "PropertyType": "DateTime"
        }],
    "Values": [
        ["599fe3a3-0285-4e7f-9c83-ffdf37914e27", 100, 0, 10, 0, "2022-03-29T18:30:57Z"],
        ["599fe3a3-0285-4e7f-9c83-ffdf37914e27", 100, 0, 11, 0, "2022-03-28T18:00:57Z"]
    ]
}
```
