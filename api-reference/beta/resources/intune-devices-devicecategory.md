---
title: "deviceCategory resource type"
description: "Intune Devices Devicecategory Source_Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceCategory resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceCategory](../api/intune-devices-devicecategory-get.md)|[deviceCategory](../resources/intune-devices-devicecategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune-devices-devicecategory.md) object.|
|[Update deviceCategory](../api/intune-devices-devicecategory-update.md)|[deviceCategory](../resources/intune-devices-devicecategory.md)|Update the properties of a [deviceCategory](../resources/intune-devices-devicecategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the device category. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceCategory",
  "id": "String (identifier)"
}
```