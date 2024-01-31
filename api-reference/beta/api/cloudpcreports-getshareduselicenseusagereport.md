---
title: "cloudPcReports: getSharedUseLicenseUsageReport (deprecated)"
description: "Get the shared use license usage reports, such as servicePlanId, licenseCount, and claimedLicenseCount, for real-time, 7 days, or 28 days trend."
author: "rbayetov"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getSharedUseLicenseUsageReport (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a usage report on shared-use licenses, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.

>[!CAUTION] 
> This API is deprecated and will stop returning data on April 24, 2024. Going forward, use the [getFrontlineReport](cloudpcreports-getfrontlinereport.md) API.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_getshareduselicenseusagereport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getshareduselicenseusagereport-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter  | Type              | Description                                                                                           |
| :--------- | :---------------- | :---------------------------------------------------------------------------------------------------- |
| reportName | String            | Specifies the report name.                                                                            |
| filter     | String            | OData filter syntax. Supported filters include `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`.         |
| select     | String collection | OData select syntax. Represents the selected columns of the reports.                                  |
| search     | String            | Specifies a string to search.                                                                         |
| groupBy    | String collection | Specifies how to group the reports. If used, must have the same content as the **select** parameter.  |
| orderBy    | String collection | Specifies how to sort the reports.                                                                    |
| skip       | Int32             | The number of records to skip.                                                                        |
| top        | Int32             | The number of top records to return.                                                                  |

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getSharedUseLicenseUsageReport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getSharedUseLicenseUsageReport
Content-Type: application/json
Content-length: 199

{
    "reportName": "SharedUseLicenseUsageReport",
    "filter": "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'",
    "select":["ServicePlanId", "LicenseCount", "ClaimedLicenseCount", "DateTimeUTC"],
    "skip": 0,
    "top": 100
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetshareduselicenseusagereport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsthisgetshareduselicenseusagereport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetshareduselicenseusagereport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetshareduselicenseusagereport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetshareduselicenseusagereport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetshareduselicenseusagereport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetshareduselicenseusagereport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsthisgetshareduselicenseusagereport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
      "name": "ServicePlanId",
      "type": "String"
    },
    {
      "name": "LicenseCount",
      "type": "Int32"
    },
    {
      "name": "ClaimedLicenseCount",
      "type": "Int32"
    },
    {
      "name": "DateTimeUTC",
      "type": "DateTime"
    }
  ],
  "Values": [
    [
      "2d1d344e-d10c-41bb-953b-b3a47521dca0", 100, 10, "2022-12-02T00:00:00"
    ],
    [
      "2d1d344e-d10c-41bb-953b-b3a47521dca0", 100, 11, "2022-12-01T00:00:00"
    ]
  ]
}
```
