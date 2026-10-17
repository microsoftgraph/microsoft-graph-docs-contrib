---
title: "accessDriftReportRequest resource type"
description: "Represents the parameters for an access drift report request."
author: "suhanigupta"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessDriftReportRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters for generating or downloading a tenant-wide access drift report.

This object is supplied as the **request** parameter of the [downloadFile](../api/accessdriftreport-downloadfile.md) and [generateDownloadUri](../api/accessdriftreport-generatedownloaduri.md) actions of [accessDriftReport](../resources/accessdriftreport.md).

The report includes all catalogs and resources for the specified resource type. To retrieve catalog-scoped access drift data, use the access drift summary and details APIs with a catalog filter.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogId|String|Reserved for future use. This property is currently ignored, and the report includes data from all catalogs.|
|reportFormat|String|The file format of the report. The supported values are `csv` and `parquet`. For the **generateDownloadUri** action, specify `parquet`.|
|resourceIds|String collection|Reserved for future use. This property is currently ignored, and the report includes all resources of the specified resource type.|
|resourceType|[accessDriftReportResourceType](../resources/enums.md#accessdriftreportresourcetype-values)|The type of resource for the report. The possible values are: `application`, `group`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessDriftReportRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessDriftReportRequest",
  "catalogId": "String",
  "reportFormat": "String",
  "resourceIds": [
    "String"
  ],
  "resourceType": "String"
}
```
