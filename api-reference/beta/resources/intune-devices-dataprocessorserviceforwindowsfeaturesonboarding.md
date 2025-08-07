---
title: "dataProcessorServiceForWindowsFeaturesOnboarding resource type"
description: "A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# dataProcessorServiceForWindowsFeaturesOnboarding resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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