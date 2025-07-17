---
title: "keyValuePair resource type"
description: "Key value pair for storing custom settings"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 04/01/2024
---

# keyValuePair resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Key value pair for storing custom settings

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name for this key-value pair|
|value|String|Value for this key-value pair|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyValuePair"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.keyValuePair",
  "name": "String",
  "value": "String"
}
```
