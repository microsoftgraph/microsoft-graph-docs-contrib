---
title: "keyLongValuePair resource type"
description: "Key long value pair"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# keyLongValuePair resource type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Key long value pair

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name for this key long value pair|
|value|Int64|Value for this key long value pair|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyLongValuePair"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.keyLongValuePair",
  "name": "String",
  "value": 1024
}
```
