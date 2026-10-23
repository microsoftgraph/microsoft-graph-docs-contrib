---
title: "applicableCatalogSummary resource type"
description: "Represents tenant-level applicability information for a Windows update catalog entry across Windows Autopatch policies."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# applicableCatalogSummary resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-level applicability information for a Windows update catalog entry across Windows Autopatch policies. Use this resource to identify affected devices and policies.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List applicableCatalogSummaries](../api/windowsupdates-updatedata-list-applicablecatalogsummaries.md)|[microsoft.graph.windowsUpdates.applicableCatalogSummary](../resources/windowsupdates-applicablecatalogsummary.md) collection|List catalog applicability summaries across Windows Autopatch policies.|
|[Get applicable catalog summary](../api/windowsupdates-applicablecatalogsummary-get.md)|[microsoft.graph.windowsUpdates.applicableCatalogSummary](../resources/windowsupdates-applicablecatalogsummary.md)|Read a catalog applicability summary.|
|[List aggregatedDevices](../api/windowsupdates-applicablecatalogsummary-list-aggregateddevices.md)|[microsoft.graph.windowsUpdates.applicableDevice](../resources/windowsupdates-applicabledevice.md) collection|List devices included in the applicability summary.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aggregatedDeviceCount|Int32|The number of devices included in the summary. Read-only.|
|hasRecommendedDevice|Boolean|Indicates whether the catalog entry is recommended for at least one device in the summary. Read-only.|
|id|String|The identifier of the associated catalog entry. Read-only.|
|policies|String collection|The identifiers of Windows Autopatch policies for which the catalog entry is applicable. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aggregatedDevices|[microsoft.graph.windowsUpdates.applicableDevice](../resources/windowsupdates-applicabledevice.md) collection|The devices included in the applicability summary.|
|catalogEntry|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md)|The associated Windows update catalog entry.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableCatalogSummary",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableCatalogSummary",
  "aggregatedDeviceCount": "Int32",
  "hasRecommendedDevice": "Boolean",
  "id": "String (identifier)",
  "policies": [
    "String"
  ]
}
```
