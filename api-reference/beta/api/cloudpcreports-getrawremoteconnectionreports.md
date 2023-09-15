---
title: "cloudPcReports: getRawRemoteConnectionReports "
description: "Get a Cloud PC's raw real-time remote connection report without any calculation or aggregation, such as roundTripTime, available bandwidth. This API is different from getRemoteConnectionHistoricalReports."
author: "pihaogong"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getRawRemoteConnectionReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a Cloud PC's raw real-time remote connection report without any calculation or aggregation, such as roundTripTime, available bandwidth. This API is different from getRemoteConnectionHistoricalReports. The getRemoteConnectionHistoricalReports API will return the report that hourly aggregates the raw event data, while getRawRemoteConnectionReports API will directly return the raw event data. The getRawRemoteConnectionReports API aims to give users a clearer and detailed insight into their remote connections.

##### Parameters
| Parameter          | Type                             | Required? | Description                                                            |
| ------------------ | -------------------------------- | --------- | ---------------------------------------------------------------------- |
| `bindingParameter` | `microsoft.graph.cloudPcReports` | Yes       | The binding parameter of the action.                                   |
| `filter`           | `Edm.String`                     | N         | OData filter syntax. Only ‘and’, ‘or’ and ’eq’ are currently supported |

| `select`           | `Collection(Edm.String)`         | N         | Define behavior to get default columns if select not specified         |
| `search`           | `Edm.String`                     | N         | Specifies a string to search                                           |
| `groupBy`          | `Collection(Edm.String)`         | N         | If used, must have the same contents as select parameter               |
| `orderBy`          | `Collection(Edm.String)`         | N         | There will be a default order assigned                                 |
| `skip`             | `Edm.Int32`                      | N         | Number of records to skip                                              |
| `top`              | `Edm.Int32`                      | N         | There will be a default top                                            |
| `returnType`       | `Edm.Stream`                     | N/A       | N/A                                                                    |
##### CSDL
```xml
<Action Name="getRawRemoteConnectionReports" IsBound="true">
    <Parameter Name="bindingParameter" Type="Collection(microsoft.graph.cloudPcReports)"/>
    <Parameter Name="filter" Type="Edm.String"/>

    <Parameter Name="select" Type="Collection(String)"/>
    <Parameter Name="search" Type="Edm.String"/>
    <Parameter Name="groupBy" Type="Collection(String)"/>
    <Parameter Name="orderBy" Type="Collection(String)"/>
    <Parameter Name="skip" Type="Edm.Int32"/>
    <Parameter Name="top" Type="Edm.Int32"/>
    <ReturnType Type="Edm.Stream"/>
</Action>
```
#### GetDailyAggregatedRemoteConnectionReports
Get the daily aggregated remote connection reports like round trip time, available bandwidth and so on in a given period.
### CloudPC RBAC resources and permissions
`Microsoft.CloudPC/PerformanceReports/Read` scope only served for read the remote connection related reports APIs includes: getRemoteConnectionHistoricalReports, getDailyAggregatedRemoteConnectionReports, getTotalAggregatedRemoteConnectionReports, getRealTimeRemoteConnectionStatus, getRealTimeRemoteConnectionLatency, getSharedUseLicenseUsageReport, getSharedUseLicenseUsageRealTimeData, noLicenseAvailableConnectivityFailureReport, frontlineLicenseUsageReport, frontlineLicenseUsageRealTimeReport.
`Microsoft.CloudPC/InaccessibleReports/Read` scope only served for read the inaccessible reports APIs includes: getInaccessibleCloudPcReports.
`Microsoft.CloudPC/Reports/Export` combined with `Microsoft.CloudPC/PerformanceReports/Read` permission served for export remote connection reports APIs includes: create and get exportJob with "reportName" equal "remoteConnectionHistoricalReports", "dailyAggregatedRemoteConnectionReports", or "totalAggregatedRemoteConnectionReports".
In future, new reports category added we will introduce a new reports read permission, and export this reports will need both the reports read and reports export permission.
| Resource display name             | Permission string                                     | Action verb | Description                                                                           |
| --------------------------------- | ----------------------------------------------------- | ----------- | ------------------------------------------------------------------------------------- |
| `Performance reports`             | `Microsoft.CloudPC/PerformanceReports/Read`           | GET         | Get the dedicated Windows 365 Cloud PC remote connection performance related reports. |
| `Reports`                         | `Microsoft.CloudPC/Reports/Export`                    | POST        | Export Windows 365 related reports.                                                   |
| `Shared use license usage report` | `Microsoft.CloudPC/SharedUseLicenseUsageReports/Read` | POST        | Read the shared use license usage report.                                             |
| `Frontline reports`               | `Microsoft.CloudPC/FrontlineReports/Read`             | POST        | Read the frontline reports.                                                           |
| `Inaccessible reports`            | `Microsoft.CloudPC/InaccessibleReports/Read`          | POST        | Read the inaccessible Cloud PC reports.                                               |
| Resource display name             | Permission string                                     | Action verb | Description                                                                           | APIs                                                                                                                                                                                                                              |
| --------------------------------- | ----------------------------------------------------- | ----------- | ------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Performance reports`             | `Microsoft.CloudPC/PerformanceReports/Read`           | GET         | Get the dedicated Windows 365 Cloud PC remote connection performance related reports. | getRemoteConnectionHistoricalReports, getRawRemoteConnectionReports, getDailyAggregatedRemoteConnectionReports, getTotalAggregatedRemoteConnectionReports, getRealTimeRemoteConnectionStatus, getRealTimeRemoteConnectionLatency. |
| `Reports`                         | `Microsoft.CloudPC/Reports/Export`                    | POST        | Export Windows 365 related reports.                                                   | create exportJob, get exportJob                                                                                                                                                                                                   |
| `Shared use license usage report` | `Microsoft.CloudPC/SharedUseLicenseUsageReports/Read` | POST        | Read the shared use license usage report.                                             | getSharedUseLicenseUsageReport                                                                                                                                                                                                    |
| `Frontline reports`               | `Microsoft.CloudPC/FrontlineReports/Read`             | POST        | Read the frontline reports.                                                           | getFrontlineReport                                                                                                                                                                                                                |
| `Inaccessible reports`            | `Microsoft.CloudPC/InaccessibleReports/Read`          | POST        | Read the inaccessible Cloud PC reports.                                               | getInaccessibleCloudPcReports                                                                                                                                                                                                     |

## Example REST operations
    "exportUrl": null
}
```
### Use case 26: Get a Cloud PC's raw real-time remote connection report, given a remote connection's activityId.
```
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getRawRemoteConnectionReports
{
    "filter": "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'",
    "select":["RoundTripTimeInMs", "AvailableBandwidthInMBps", "SignInDateTime"],
    "skip": 0,
    "top": 50
}
HTTP/1.1 200 OK
{
    "TotalRowCount": 1,
    "Schema": [
        {
            "Column": "RoundTripTimeInMs",
            "PropertyType": "Double"
        }
        {
            "Column": "AvailableBandwidthInMBps",
            "PropertyType": "Double"
        },
        {
            "Column": "SignInDateTime",
            "PropertyType": "DateTime"
        }],
    "Values": [
        ["316", "8", "2023-07-03T18:14:34Z"]
    ]
}
```
### Use case 27: Create an exportJob to export rawRemoteConnectionReports.
```
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/exportJobs
{
    "reportName": "rawRemoteConnectionReports",
    "select": ["RoundTripTimeInMs", "AvailableBandwidthInMBps", "SignInDateTime"],
    "filter": "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'"
}
HTTP/1.1 201 CREATED
{
    "@odata.context": "https://localhost:44326/api/dfe/odata/$metadata#virtualEndpoint/reports/exportJobs/$entity",
    "id": "RawRemoteConnectionReports__e14ec45a-f38c-4e5f-b650-4a8692c22c7c",
    "reportName": "rawRemoteConnectionReports",
    "filter": "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'",
    "select": [
        "RoundTripTimeInMs",
        "AvailableBandwidthInMBps",
        "SignInDateTime"
    ],
    "format": null,
    "expirationDateTime": null,
    "requestDateTime": null,
    "exportJobStatus": "inProgress",
    "exportUrl": null
}
```


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/reports/getRawRemoteConnectionReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|filter|String|OData filter syntax. Supported filters include `and`, `or`, `lt`, `le`, `gt`, `ge` and `eq`.|
|select|String collection|OData select syntax. Represents the selected columns of the reports. |
|skip|Int32|Number of records to skip.|
|top|Int32|The number of top records to return.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getrawremoteconnectionreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getRawRemoteConnectionReports
Content-Type: application/json
Content-length: 199

{
    "filter": "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'",
    "select":["RoundTripTimeInMs", "AvailableBandwidthInMBps", "SignInDateTime"],
    "skip": 0,
    "top": 50
}
```
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
    "TotalRowCount": 1,
    "Schema": [
        {
            "Column": "RoundTripTimeInMs",
            "PropertyType": "Double"
        }
        {
            "Column": "AvailableBandwidthInMBps",
            "PropertyType": "Double"
        },
        {
            "Column": "SignInDateTime",
            "PropertyType": "DateTime"
        }],
    "Values": [
        ["316", "8", "2023-07-03T18:14:34Z"]
    ]
}
```

