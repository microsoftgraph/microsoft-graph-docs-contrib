---
title: "chromeOSDeviceProperty resource type"
description: "Represents a property of the ChromeOS device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# chromeOSDeviceProperty resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a property of the ChromeOS device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the property|
|value|String|Value of the property|
|valueType|String|Type of the value|
|updatable|Boolean|Whether this property is updatable|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chromeOSDeviceProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chromeOSDeviceProperty",
  "name": "String",
  "value": "String",
  "valueType": "String",
  "updatable": true
}
```
