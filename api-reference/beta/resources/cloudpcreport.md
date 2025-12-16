---
title: "cloudPcReport resource type"
description: "Represents the Windows 365 Cloud PC-related reports."
author: "zhuolinglii"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/11/2025
---

# cloudPcReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports.

Use a method in the [Methods](#methods) section to get the corresponding report data in the response.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Retrieve Cloud PC recommendation reports](../api/cloudpcreport-retrievecloudpcrecommendationreports.md)|Stream|Retrieve Cloud PC recommendation [reports](../resources/cloudpcreport.md) for usage optimization and cost savings.|
|[Retrieve Cloud PC client app usage reports](../api/cloudpcreport-retrievecloudpcclientappusagereport.md)|Stream|Retrieve related [reports](../resources/cloudpcreport.md) on Cloud PC usage, including the client application used by users to sign in to the Cloud PC device. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only. |

### cloudPcRecommendationReportType values

| Member                        | Description       |
| :---------------------------- | :---------------- |
| cloudPcUsageCategoryReport    | Indicates the report that shows the usage of Cloud PCs along with their associated categories. The possible report columns for these categories are: `Undersized`, `Oversized`, `Rightsized`, or `Underutilized` based on usage.|
| unknownFutureValue            | Evolvable enumeration sentinel value. Don't use.|
| cloudPcUsageCategoryReports (deprecated)   | Indicates the report that shows the usage of Cloud PCs along with their associated categories. The possible report columns for these categories are: `Undersized`, `Oversized`, `Rightsized`, or `Underutilized` based on usage. The `cloudPcUsageCategoryReports` member is deprecated and will stop returning on December 31, 2025. Going forward, use the `cloudPcUsageCategoryReport` member.|

### cloudPcClientAppUsageReportType values

| Member                                       | Description                                                                                           |
| :------------------------------------------- | :------------------------------------------------------------------------------------------------------------ |
| microsoftRemoteDesktopClientUsageReport      | Indicates the report that shows the Cloud PC usage with Microsoft Remote Desktop client. We recommend that you migrate to Windows App to experience its full benefits and to avoid losing access to remote resources on March 27, 2026. [Learn](https://techcommunity.microsoft.com/blog/windows-itpro-blog/prepare-for-the-remote-desktop-client-for-windows-end-of-support/4397724) more about preparing for the Remote Desktop client for Windows end of support.  |
| unknownFutureValue                           | Evolvable enumeration sentinel value. Don't use.                                                     |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcReport",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcReport",
  "id": "String (identifier)"
}
```


