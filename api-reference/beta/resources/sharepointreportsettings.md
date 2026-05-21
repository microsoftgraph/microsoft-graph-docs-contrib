---
title: "sharePointReportSettings resource type"
description: "Represents the tenant-level settings for SharePoint API usage reports."
author: "abkakhan"
ms.date: 05/21/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# sharePointReportSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-level settings for SharePoint API usage reports. This resource is accessed through the operations listed below to enable, disable, or view the status of API usage report metrics.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[disableApiUsageReport](../api/sharepointreportsettings-disableapiusagereport.md)|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md)|Disable a SharePoint API usage report metric.|
|[enableApiUsageReport](../api/sharepointreportsettings-enableapiusagereport.md)|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md)|Enable a SharePoint API usage report metric.|
|[List apiUsageReportMetrics](../api/sharepointreportsettings-list-apiusagereportmetrics.md)|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md) collection|Get the list of API usage report metrics and their enablement status.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the SharePoint report settings object. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|apiUsageReportMetrics|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md) collection|The collection of API usage report metrics and their enablement status.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointReportSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointReportSettings",
  "id": "String (identifier)"
}
```
