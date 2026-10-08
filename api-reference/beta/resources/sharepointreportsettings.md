---
title: "sharePointReportSettings resource type"
description: "Represents the tenant-level settings for SharePoint API usage reports."
author: "abhishekkakhandiki"
ms.date: 05/21/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
toc.title: SharePoint report settings
---

# sharePointReportSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-level settings for SharePoint API usage reports. This resource allows you to enable, disable, or view the status of API usage report metrics.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointreportsettings-list-apiusagereportmetrics.md)|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md) collection|Get the list of [SharePoint API usage report metrics and their enablement status](../resources/apiusagereportenablementstatus.md) for the tenant.|
|[Enable API usage report](../api/sharepointreportsettings-enableapiusagereport.md)|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md)|Enable a [SharePoint API usage report metric](../resources/apiusagereportenablementstatus.md) for the tenant.|
|[Disable API usage report](../api/sharepointreportsettings-disableapiusagereport.md)|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md)|Disable a [SharePoint API usage report metric](../resources/apiusagereportenablementstatus.md) for the tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the SharePoint report settings object. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|apiUsageReportMetrics|[apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md) collection|The collection of API usage report metrics and the status of their enablement.|

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
