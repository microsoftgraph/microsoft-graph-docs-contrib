---
title: "wslDistributionConfiguration resource type"
description: "Intune Deviceconfig Wsldistributionconfiguration Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# wslDistributionConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|distribution|String|Linux distribution like Debian, Fedora, Ubuntu etc.|
|minimumOSVersion|String|Minimum supported operating system version of the linux version.|
|maximumOSVersion|String|Maximum supported operating system version of the linux version.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.wslDistributionConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.wslDistributionConfiguration",
  "distribution": "String",
  "minimumOSVersion": "String",
  "maximumOSVersion": "String"
}
```
