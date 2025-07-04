---
title: "discoveredCloudAppIPAddress resource type"
description: "Represents the IP address associated with a discovered cloud app."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 11/11/2024
---

# discoveredCloudAppIPAddress resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the IP address associated with a discovered cloud app.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-discoveredcloudappdetail-list-ipaddresses.md)|[microsoft.graph.security.discoveredCloudAppIPAddress](../resources/security-discoveredcloudappipaddress.md) collection|Get the list of [IP addresses](../resources/security-discoveredcloudappipaddress.md) associated with a discovered cloud app.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ipAddress|String|The IP address associated with a discovered cloud app.|

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
  "ipAddress": "String"
}
```

