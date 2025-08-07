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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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