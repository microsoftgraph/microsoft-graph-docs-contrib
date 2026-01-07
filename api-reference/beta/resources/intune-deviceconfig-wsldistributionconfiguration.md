---
title: "wslDistributionConfiguration resource type"
description: "Intune Deviceconfig Wsldistributionconfiguration Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# wslDistributionConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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