---
title: "accessDriftReport resource type"
description: "Represents a transient entity for downloading access drift report files."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessDriftReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a transient entity for downloading access drift report files. This resource provides actions to generate a time-limited download URI or stream the report file directly.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[downloadFile](../api/accessdriftreport-downloadfile.md)|Stream|Download the latest access drift report file directly.|
|[generateDownloadUri](../api/accessdriftreport-generatedownloaduri.md)|[accessDriftReport](../resources/accessdriftreport.md)|Generate a time-limited download URI for the latest access drift report.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|downloadUri|String|The time-limited SAS URI for downloading the report file. This property is populated only in the response of the **generateDownloadUri** action.|
|expiresAt|DateTimeOffset|The date and time when the download URI expires. This property is populated only in the response of the **generateDownloadUri** action.|
|id|String|A randomly generated identifier for this report instance. Inherited from [entity](../resources/entity.md).|
|resourceType|[accessDriftReportResourceType](../resources/enums.md#accessdriftreportresourcetype-values)|The resource type of the report. The possible values are: `application`, `group`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessDriftReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessDriftReport",
  "id": "String (identifier)",
  "downloadUri": "String",
  "expiresAt": "String (timestamp)",
  "resourceType": "String"
}
```
