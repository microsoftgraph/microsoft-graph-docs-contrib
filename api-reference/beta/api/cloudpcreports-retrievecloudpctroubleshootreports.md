---
title: "cloudPcReports: retrieveCloudPcTroubleshootReports"
description: "Get troubleshooting-related reports for CloudPCs."
author: "abbyzhccc"
ms.date: 12/10/2024
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: retrieveCloudPcTroubleshootReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get troubleshoot related reports for CloudPCs. This report would be `troubleshootRegionalReport`, `troubleshootDetailsReport`,`troubleshootTrendCountReport`, `troubleshootIssueCountReport`.

If report name is `troubleshootRegionalReport`, it can also get daily  regional details report for Cloud PCs.

| Column                      | Description                                                                 |
|-----------------------------|-----------------------------------------------------------------------------|
| HostRegion                  | The region where the Cloud PC provision is located.                         |
| GatewayRegion               | The region where the gateway is located.                                    |
| AvgRoundTripTimeInMs        | The average round trip time in milliseconds of certain HostRegion-GatewayRegion pair. |
| AvgBandwidthInMbps          | The average available bandwidth in Mbps of certain HostRegion-GatewayRegion pair. |
| ConnectionErrorCount        | The count of connection errors in certain HostRegion-GatewayRegion pair.    |
| RTTIssueCount               | The count of Cloud PC with round trip time issues.                          |
| ConnectionQualityIssueCount | The count of Cloud PC with connection quality issues.                       |
| StabilityIssueCount         | The count of Cloud PC with stability issues.                                |
| BandwidthIssueCount         | The count of Cloud PC with available bandwidth issues.                      |
| ConnnectErrorIssueCount     | The count of Cloud PC with connection error issues.                         |
| RTTStabilityIssueCount      | The count of Cloud PC with round trip time stability issues.                |
| BandwidthStabilityIssueCount| The count of Cloud PC with bandwidth stability issues.                      |


If report name is `troubleshootDetailsReport`, this report is used to get the details.  

| Column                          | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| UsageInsight                    | Insights on the current usage of the resource. The value would be                                |
| CurrentSize                     | The current size of the resource.                                            |
| CurrentCPU                      | The current CPU usage of the resource.                                       |
| CurrentRamInGB                  | The current RAM usage in GB.                                                 |
| CurrentDiskInGB                 | The current disk usage in GB.                                                |
| RecommendedSize                 | The recommended size for the resource.                                       |
| RecommendedCPU                  | The recommended CPU usage for the resource.                                  |
| RecommendedRamInGB              | The recommended RAM usage in GB.                                             |
| RecommendedDiskInGB             | The recommended disk usage in GB.                                            |
| ProvisionPolicyName             | The name of the provision policy.                                            |
| RoundTripTimeInMsAvg            | The average round trip time in milliseconds.                                 |
| AvailableBandwidthInMbpsAvg     | The average available bandwidth in Mbps.                                     |
| HasPerformanceIssue             | Indicates if there is a performance issue.                                   |
| HasNetworkIssue                 | Indicates if there is a network issue.                                       |
| HasReliabilityIssue             | Indicates if there is a reliability issue.                                   |
| HasCpuIssue                     | Indicates if there is a CPU issue.                                           |
| HasMemIssue                     | Indicates if there is a memory issue.                                        |
| HasRTTIssue                     | Indicates if there is a round trip time issue.                               |
| HasConnectionQualityIssue       | Indicates if there is a connection quality issue.                            |
| HasStabilityIssue               | Indicates if there is a stability issue.                                     |
| HasBandwidthIssue               | Indicates if there is a bandwidth issue.                                     |
| HasConnnectErrorIssue           | Indicates if there is a connection error issue.                              |
| HasRTTStabilityIssue            | Indicates if there is a round trip time stability issue.                     |
| HasBandwidthStabilityIssue      | Indicates if there is a bandwidth stability issue.                           |
| ConnectionErrorCount            | The count of connection errors.                                              |

If report name is `troubleshootTrendCountReport`, this report is used to get daily overview issue insight of Cloud PCs. 

| Column                          | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| CpuIssueCloudPcCount            | The count of Cloud PCs with CPU issues.                                     |
| CpuIssueTrend                   | The count trend of Cloud PCs with CPU issues over a week.                   |
| MemoryIssueCloudPcCount         | The count of Cloud PCs with memory issues.                                  |
| MemoryIssueTrend                | The count trend of Cloud PCs with memory issues over a week.                |
| RTTIssueCloudPcCount            | The count of Cloud PCs with round trip time issues.                         |
| RTTIssueTrend                   | The count trend of Cloud PCs with round trip time issues over a week.       |
| StabilityIssueCloudPcCount      | The count of Cloud PCs with stability issues.                               |
| StabilityIssueTrend             | The count trend of Cloud PCs with stability issues over a week.                                    |
| ConnectionQualityIssueCloudPcCount | The count of Cloud PCs with connection quality issues.                   |
| ConnectionQualityIssueTrend     | The count trend of Cloud PCs with connection quality issues over time.                           |
| TotalImpactedCloudPcCount       | The total count of impacted Cloud PCs.                                      |
| PerformanceIssueCount           | The metric count of performance issues.                             |
| NetworkIssueCount               | The metric count of network issues.                                 |
| ReliabilityIssueCount           | The metric count of reliability issues.                             |


If report name is `troubleshootIssueCountReport`, this aggregated report over 28 days that shows the number of performance issues, network issues, and reliability issues.  

| Column                      | Description                                                                 |
|-----------------------------|-----------------------------------------------------------------------------|
| AsofDate                    | The date time of data.                                                      |
| PerformanceIssueCount       | The metric count of performance issues.                                     |
| NetworkIssueCount           | The metric count of network issues.                                         |
| ReliabilityIssueCount       | The metric count of reliability issues.                                     |
| CpuIssueCount               | The metric count of CPU issues.                                             |
| MemoryIssueCount            | The metric count of memory issues.                                          |
| RTTIssueCount               | The metric count of round trip time issues.                                 |
| StabilityIssueCount         | The metric count of stability issues.                                       |
| ConnectionQualityIssueCount | The metric count of connection quality issues.                              |

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

| Parameter | Required |  Type    |Description                                                                                             |
|:----------|:---------|:---------|:-------------------------------------------------------------------------------------------------------|
| filter    | No       |String            | OData `$filter` syntax. Supported filters are: `and`, `or`, `gt` ,`ge`, and `eq`.              |
| reportName| Yes      |String            |The report name, possible values: `troubleshootDetailsReport`, `troubleshootTrendCountReport`, `troubleshootRegionalReport`, `troubleshootIssueCountReport`.Default value is: troubleshootDetailsReport.|
| groupBy   | No       |String collection | Specifies how to group the reports. If used, must have the same content as the **select** parameter.   |
| orderBy   | No       |String collection | Specifies the order by columns name.              |
| search    | No       |String            | Specifies a string to search for.                                                                      |
| select    | No       |String collection | OData `$select` syntax. The selected columns of the reports.                                           |
| skip      | No       |Int32             | Number of records to skip.                                                                             |
| top       | No       |Int32             | The number of top records to return. If not specified, the default limit is 25, with a maximum of 100. |



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

