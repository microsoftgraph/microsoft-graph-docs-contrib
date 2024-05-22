---
title: "discoveredCloudAppDevice resource type"
description: "**This is a report on the devices that are accessing discovered SaaS apps**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppDevice resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Please read the disclaimer**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-endpointdiscoveredcloudappdetail-list-devices.md)|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Get a list of the [microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|**This is the list of properties available**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.security.discoveredCloudAppDevice",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.discoveredCloudAppDevice",
  "name": "String (identifier)"
}
```

