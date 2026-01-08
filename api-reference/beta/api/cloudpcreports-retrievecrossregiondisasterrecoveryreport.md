---
title: "cloudPcReports: retrieveCrossRegionDisasterRecoveryReport"
description: "Retrieve the Windows 365 cross-region disaster recovery report, including cloudPcId, userId, deviceId, cloudPCDeviceDisplayName, userPrincipalName, enabledDRType, disasterRecoveryStatus, licenseType, drHealthStatus, currentRestorePointDateTime, backupCloudPcStatus, and activationExpirationDateTime."
author: "ms-linxin"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 07/02/2024
---

# cloudPcReports: retrieveCrossregionDisasterRecoveryReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the Windows 365 cross-region disaster recovery report, including cloudPcId, userId, deviceId, cloudPCDeviceDisplayName, userPrincipalName, enabledDRType, disasterRecoveryStatus, licenseType, drHealthStatus, currentRestorePointDateTime, backupCloudPcStatus, and activationExpirationDateTime.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_retrievecrossregiondisasterrecoveryreport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecrossregiondisasterrecoveryreport-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCrossRegionDisasterRecoveryReport
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

| Parameter  | Type              | Description                                                                                           |
| :--------- | :---------------- | :---------------------------------------------------------------------------------------------------- |
| filter     | String            | OData `$filter` syntax. The supported filters are: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`.     |
| groupBy    | String collection | Specifies how to group the reports. If used, must have the same content as the **select** parameter.  |
| orderBy    | String collection | Specifies how to sort the reports.                                                                    |
| reportName | [cloudPcDisasterRecoveryReportName](#cloudpcdisasterrecoveryreportname-values) | Indicates the name of the Cloud PC disaster recovery report. The possible values are: `crossRegionDisasterRecoveryReport`, `disasterRecoveryReport`, `unknownFutureValue`. When **reportName** isn't initialized, `crossRegionDisasterRecoveryReport` is the default value. |
| search     | String            | Specifies a String to search.                                                                         |
| select     | String collection | OData `$select` syntax. The selected columns of the reports.                                          |
| skip       | Int32             | The number of records to skip.                                                                        |
| top        | Int32             | The number of top records to return.                                                                  |

### cloudPcDisasterRecoveryReportName values

|Member|Description|
|:---|:---|
| crossRegionDisasterRecoveryReport| Default. Indicates the report that shows the overview and details of Cloud PCs with cross-region disaster recovery configurations, health check, and status.|
| disasterRecoveryReport| Indicates the report that shows the disaster recovery status of Cloud PCs with their associated category. |
| unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.retrievecrossregiondisasterrecoveryreport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrievecrossregiondisasterrecoveryreport
Content-Type: application/json
Content-length: 199

{
  "reportName": "crossRegionDisasterRecoveryReport",
  "filter": "DisasterRecoveryStatus eq 'Active outage'",
  "select": [
    "Id",
    "CloudPcId",
    "UserId",
    "UserSettingId",
    "DeviceId",
    "CloudPCDeviceDisplayName",
    "UserPrincipalName",
    "EnabledDRType",
    "DRHealthStatus",
    "LicenseType",
    "DisasterRecoveryStatus",
    "CurrentRestorePointDateTime",
    "BackupCloudPcStatus",
    "ActivationExpirationDateTime"
  ],
  "skip": 0,
  "top": 50
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisretrievecrossregiondisasterrecoveryreport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisretrievecrossregiondisasterrecoveryreport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisretrievecrossregiondisasterrecoveryreport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisretrievecrossregiondisasterrecoveryreport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisretrievecrossregiondisasterrecoveryreport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsthisretrievecrossregiondisasterrecoveryreport-python-snippets.md)]
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
  "TotalRowCount": 1,
  "Schema": [
    {
      "Column": "Id",
      "PropertyType": "String"
    },
    {
      "Column": "CloudPcId",
      "PropertyType": "String"
    },
    {
      "Column": "UserId",
      "PropertyType": "String"
    },
    {
      "Column": "UserSettingId",
      "PropertyType": "String"
    },
    {
      "Column": "DeviceId",
      "PropertyType": "String"
    },
    {
      "Column": "CloudPcDeviceDisplayName",
      "PropertyType": "String"
    },
    {
      "Column": "UserPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "EnabledDRType",
      "PropertyType": "String"
    },
    {
      "Column": "DRHealthStatus",
      "PropertyType": "String"
    },
    {
      "Column": "LicenseType",
      "PropertyType": "String"
    },
    {
      "Column": "DisasterRecoveryStatus",
      "PropertyType": "String"
    },
    {
      "Column": "CurrentRestorePointDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "BackupCloucPcStatus",
      "PropertyType": "String"
    },
    {
      "Column": "ActivationExpirationDateTime",
      "PropertyType": "DateTime"
    }
  ],
  "Values": [
    [
      "7768debd-7955-4b32-a654-a02894bce953",
      "69360332-619a-4b38-af5d-91ecef72f789",
      "c939b389-979f-4687-945d-d1220b3d4d24",
      "k739b389-979f-4j87-945d-d3220b3d4o24",
      "9330ff50-0a1b-4038-8fe8-3c4a67ec4dc5",
      "CPC-Cross-JG79E",
      "john.doe@contoso.com",
      "CrossRegionDR",
      "Unhealthy:'ANC unhealthy', 'Network mismatch'",
      "Cross Region",
      "Active outage",
      "2023-10-16 03:05:14.131 AM",
      "",
      "2023-10-19 07:05:14.131 AM"
    ]
  ]
}
```
