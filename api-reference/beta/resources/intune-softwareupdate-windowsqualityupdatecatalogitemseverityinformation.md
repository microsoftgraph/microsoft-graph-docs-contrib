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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

CVE information of QU catalog item

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maxSeverity|[windowsQualityUpdateCatalogItemSeverityMaxSeverity](../resources/intune-softwareupdate-windowsqualityupdatecatalogitemseveritymaxseverity.md)|Max severity of CVE. Possible values are: `critical`, `important`, `moderate`, `unknownFutureValue`.|
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