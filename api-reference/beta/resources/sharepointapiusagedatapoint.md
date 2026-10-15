---
title: "sharePointApiUsageDataPoint resource type"
description: "Represents a single data point in a SharePoint Online API usage report."
author: "ireneren"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 10/05/2026
---

# sharePointApiUsageDataPoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single data point in a OneDrive and SharePoint API usage report. Each data point can be either a summary row or a detail row:

- **Summary row**: Aggregated usage across all applications for a date or period. The **appId** is `null` and **activeApps** is populated.
- **Detail row**: Usage for a specific application on a specific date. The **appId** is populated and **activeApps** is `null`.

Data points in detail rows are ordered by **usageDateTime** descending (most recent first).

The properties present in each data point depend on the report type requested through the **reportType** parameter of the [getSharePointApiUsage](../api/reportroot-getsharepointapiusage.md) function:

- `egressReport` includes **usageMB** and **usageRequests**.
- `throttlingReport` includes **throttledRequests** and **usageRequests**.
- `sharePointServicePrioritizationReport` includes **usageRequests**, **standardRequestCount**, **heavyRequestCount**, **billedStandardRequestCount**, and **billedHeavyRequestCount**.

## Properties

| Property      | Type           | Description                                                                                                                                                                                                                        |
|:--------------|:---------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| activeApps    | Int32          | The number of distinct applications with usage during the reporting period. Summary rows: populated with the count of active applications. Detail rows: null. Read-only.                                                        |
| appId         | String         | The unique identifier (GUID) for the application. Summary rows: null. Detail rows: the application GUID. Read-only.                                                                                                             |
| billedHeavyRequestCount | Int64 | The number of heavy API requests that were billed. Only present in the `sharePointServicePrioritizationReport`. For summary rows, this is the total number of billed heavy requests across all applications. For detail rows, this is the number of billed heavy requests for the specific application on the specific date. Read-only. |
| billedStandardRequestCount | Int64 | The number of standard API requests that were billed. Only present in the `sharePointServicePrioritizationReport`. For summary rows, this is the total number of billed standard requests across all applications. For detail rows, this is the number of billed standard requests for the specific application on the specific date. Read-only. |
| heavyRequestCount | Int64 | The number of API requests classified as heavy. Only present in the `sharePointServicePrioritizationReport`. For summary rows, this is the total number of heavy requests across all applications. For detail rows, this is the number of heavy requests for the specific application on the specific date. Read-only. |
| serviceArea   | String         | The service area name. Always `OneDrive and SharePoint` for SharePoint API usage reports. Read-only.                                                                                                                               |
| standardRequestCount | Int64 | The number of API requests classified as standard. Only present in the `sharePointServicePrioritizationReport`. For summary rows, this is the total number of standard requests across all applications. For detail rows, this is the number of standard requests for the specific application on the specific date. Read-only. |
| tenantId      | String         | The unique identifier (GUID) for the tenant. Read-only.                                                                                                                                                                            |
| throttledRequests | Int64      | The number of API requests that were throttled. Only present in the `throttlingReport`. For summary rows, this is the total number of throttled requests across all applications. For detail rows, this is the number of throttled requests for the specific application on the specific date. Read-only. |
| usageDateTime | DateTimeOffset | The date and time for this data point in ISO 8601 format. For summary rows, this is the most recent date in the reporting period. For detail rows, this is the specific date for the usage data. Read-only.                        |
| usageMB       | Int64          | Total usage in megabytes (MB) for this data point. Only present in the `egressReport`. For summary rows, this is the total aggregated usage across all applications for the reporting period. For detail rows, this is the usage for the specific application on the specific date. Read-only.         |
| usageRequests | Int64          | The number of API requests. Present in all report types. For summary rows, this is the total number of requests across all applications. For detail rows, this is the number of requests for the specific application on the specific date. Read-only.                                                              |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointApiUsageDataPoint",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointApiUsageDataPoint",
  "activeApps": "Int32",
  "appId": "String",
  "billedHeavyRequestCount": "Int64",
  "billedStandardRequestCount": "Int64",
  "heavyRequestCount": "Int64",
  "serviceArea": "String",
  "standardRequestCount": "Int64",
  "tenantId": "String",
  "throttledRequests": "Int64",
  "usageDateTime": "String (timestamp)",
  "usageMB": "Int64",
  "usageRequests": "Int64"
}
```
