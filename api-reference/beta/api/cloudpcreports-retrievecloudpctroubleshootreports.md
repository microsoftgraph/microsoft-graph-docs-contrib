---
title: "cloudPcReports: retrieveCloudPcTroubleshootReports"
description: "Get troubleshoot related reports for CloudPCs. This report is used to get the details for Cloud PCs which includessageInsight, currentSize, currentCPU, currentRamInGB, CurrentDiskInGB, RecommendedSize, RecommendedCPU, RecommendedRamInGB, RecommendedDiskInGB, ProvisionPolicyId, ProvisionPolicyName, RoundTripTimeInMsAvg, AvailableBandwidthInMbpsAvg. It can also be the daily overview issue insight of Cloud PCs including usageInsight, issueType, issueCount, issueTrend. It can also get daily  regional details report for Cloud PCs including hostRegion, gatewayRegion, avgRoundTripTimeInMs, avgBandwidthInMbps, connectionErrorCount, RTTIssueCount, connectionQualityIssueCount, stabilityIssueCount."
author: "abbyzhccc"
ms.date: 12/10/2024
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: retrieveCloudPcTroubleshootReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get troubleshoot related reports for CloudPCs. This report is used to get the details for Cloud PCs which includessageInsight, currentSize, currentCPU, currentRamInGB, CurrentDiskInGB, RecommendedSize, RecommendedCPU, RecommendedRamInGB, RecommendedDiskInGB, ProvisionPolicyId, ProvisionPolicyName, RoundTripTimeInMsAvg, AvailableBandwidthInMbpsAvg. It can also be the daily overview issue insight of Cloud PCs including usageInsight, issueType, issueCount, issueTrend. It can also get daily  regional details report for Cloud PCs including hostRegion, gatewayRegion, avgRoundTripTimeInMs, avgBandwidthInMbps, connectionErrorCount, RTTIssueCount, connectionQualityIssueCount, stabilityIssueCount.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudpcreports-retrievecloudpctroubleshootreports-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecloudpctroubleshootreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

| Parameter | Type              | Description                                                                                            |
|:----------|:------------------|:-------------------------------------------------------------------------------------------------------|
| filter    | String            | OData `$filter` syntax. Supported filters are: `and`, `or`, `gt` ,`ge`, and `eq`.                      |
| groupBy   | String collection | Specifies how to group the reports. If used, must have the same content as the **select** parameter.   |
| orderBy   | String collection | Specifies the order by columns name.              |
| search    | String            | Specifies a string to search for.                                                                      |
| select    | String collection | OData `$select` syntax. The selected columns of the reports.                                           |
| skip      | Int32             | Number of records to skip.                                                                             |
| top       | Int32             | The number of top records to return. If not specified, the default limit is 25, with a maximum of 100. |



## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.retrieveCloudPcTroubleshootReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports
Content-Type: application/json

{
    "filter": "",
    "reportName":"troubleshootDetailsReport",
    "select": ["CloudPcId", "ManagedDeviceName", "UserPrincipalName", "UsageInsight", "CurrentSize", "CurrentCPU", "CurrentRamInGB", "CurrentDiskInGB", "RecommendedSize", "RecommendedCPU", "RecommendedRamInGB", "RecommendedDiskInGB", "ProvisionPolicyId", "ProvisionPolicyName", "RoundTripTimeInMsAvg", "AvailableBandwidthInMbpsAvg"]
    "search": "",
    "skip": 0,
    "top": 50
}
```


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
Content-Type: application/json

{
"TotalRowCount": 1,
    "Schema": [
        {
            "Column": "CloudPcId",
            "PropertyType": "String"
        },
        {
            "Column": "ManagedDeviceName",
            "PropertyType": "String"
        },
        {
            "Column": "UserPrincipalName",
            "PropertyType": "String"
        },
        {
            "Column": "UsageInsight",
            "PropertyType": "String"
        },
        {
            "Column": "CurrentSize",
            "PropertyType": "Int"
        },
        {
            "Column": "CurrentCPU",
            "PropertyType": "Int"
        },
        {
            "Column": "CurrentRamInGB",
            "PropertyType": "Int"
        },
        {
            "Column": "CurrentDiskInGB",
            "PropertyType": "Int"
        },
        {
            "Column": "RecommendedSize",
            "PropertyType": "String"
        },
        {
            "Column": "RecommendedCPU",
            "PropertyType": "Int"
        },
        {
            "Column": "RecommendedRamInGB",
            "PropertyType": "Int"
        },
        {
            "Column": "RecommendedDiskInGB",
            "PropertyType": "Int"
        },
        {
            "Column": "ProvisionPolicyId",
            "PropertyType": "String"
        },
        {
            "Column": "ProvisionPolicyName",
            "PropertyType": "String"
        },
        {
            "Column": "RoundTripTimeInMsAvg",
            "PropertyType": "Double"
        },
        {
            "Column": "AvailableBandwidthInMbpsAvg",
            "PropertyType": "Double"
        }],
    "Values": [
        ["f5ff445f-7488-40f8-8ab9-ee784a9c1f33", "Cloud PC-Ana Bowman", "ana@contoso.com","Performance", "2", "4", "64","Undersized", "4", "8", "128", "abcd445f-7488-40f8-8ab9-ee784a9c1f33"", "policy1", "200.1","50.65"]
    ]
}
```

