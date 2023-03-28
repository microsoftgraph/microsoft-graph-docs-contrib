---
title: "dataProcessorServiceForWindowsFeaturesOnboarding resource type"
description: "A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# dataProcessorServiceForWindowsFeaturesOnboarding resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|hasValidWindowsLicense|Boolean|Indicates whether the tenant has required Windows license. When TRUE, the tenant has the required Windows license. When FALSE, the tenant does not have the required Windows license. Default value is FALSE.|
|areDataProcessorServiceForWindowsFeaturesEnabled|Boolean|Indicates whether the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When TRUE, the tenant has enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. When FALSE, the tenant has not enabled MEM features utilizing Data Processor Service for Windows (DPSW) data. Default value is FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataProcessorServiceForWindowsFeaturesOnboarding"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataProcessorServiceForWindowsFeaturesOnboarding",
  "hasValidWindowsLicense": true,
  "areDataProcessorServiceForWindowsFeaturesEnabled": true
}
```
