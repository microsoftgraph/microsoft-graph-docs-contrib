---
title: "iPv6Range resource type"
description: "IPv6 Range definition."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iPv6Range resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

IPv6 Range definition.


Inherits from [ipRange](../resources/intune-mam-iprange.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lowerAddress|String|Lower address.|
|upperAddress|String|Upper address.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iPv6Range"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iPv6Range",
  "lowerAddress": "String",
  "upperAddress": "String"
}
```
