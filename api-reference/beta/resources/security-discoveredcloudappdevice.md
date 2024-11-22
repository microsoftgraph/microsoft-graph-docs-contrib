---
title: "discoveredCloudAppDevice resource type"
description: "Represents a device associated with a discovered cloud app."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppDevice resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device associated with a discovered cloud app.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-endpointdiscoveredcloudappdetail-list-devices.md)|[microsoft.graph.security.discoveredCloudAppDevice](../resources/security-discoveredcloudappdevice.md) collection|Get a list of [devices](../resources/security-discoveredcloudappdevice.md) that access a discovered cloud app.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the cloud app.|

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
  "name": "String"
}
```

