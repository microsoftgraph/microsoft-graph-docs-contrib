---
title: "windowsQualityUpdateCatalogItemSeverityInformation resource type"
description: "CVE information of QU catalog item"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCatalogItemSeverityInformation resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

CVE information of QU catalog item

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maxSeverity|[windowsQualityUpdateCatalogItemSeverityMaxSeverity](../resources/intune-softwareupdate-windowsqualityupdatecatalogitemseveritymaxseverity.md)|Max severity of CVE. The possible values are: `critical`, `important`, `moderate`, `unknownFutureValue`.|
|maxBaseScore|Double|Max base score of CVE|
|exploitedCves|[windowsQualityUpdateCatalogItemExploitedCve](../resources/intune-softwareupdate-windowsqualityupdatecatalogitemexploitedcve.md) collection|Exploit cve details|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogItemSeverityInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItemSeverityInformation",
  "maxSeverity": "String",
  "maxBaseScore": "4.2",
  "exploitedCves": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogItemExploitedCve",
      "number": "String",
      "url": "String"
    }
  ]
}
```