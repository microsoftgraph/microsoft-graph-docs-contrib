---
title: "discoveredCloudAppIPAddress resource type"
description: "Respresents discovered IP address"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppIPAddress resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Please read disclaimer**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get a list of the [microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ipAddress|String|**These are the list of properties available to query the IpAddress accessed by discovered SaaS apps**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "ipAddress",
  "@odata.type": "microsoft.graph.security.discoveredCloudAppIPAddress",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.discoveredCloudAppIPAddress",
  "ipAddress": "String (identifier)"
}
```

