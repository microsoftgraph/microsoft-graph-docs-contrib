---
title: "device resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# device resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-list-device.md)|[device](../resources/device.md) collection|Get the devices from the device navigation property.|
|[Create device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-post-device.md)|[device](../resources/device.md)|Create a new device object.|
|[Update device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-update-device.md)|[device](../resources/device.md)|Update the properties of a device object.|
|[Get device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-get-device.md)|[device](../resources/device.md)|Read the properties and relationships of a [device](../resources/device.md) object.|
|[Delete device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-delete-device.md)|None|Delete a [device](../resources/device.md) object.|
|[List devices](../api/device-list.md)|[device](../resources/device.md) collection|Get a list of the [device](../resources/device.md) objects and their properties.|
|[Create device](../api/device-create.md)|[device](../resources/device.md)|Create a new [device](../resources/device.md) object.|
|[Get device](../api/device-get.md)|[device](../resources/device.md)|Read the properties and relationships of a [device](../resources/device.md) object.|
|[Update device](../api/device-update.md)|[device](../resources/device.md)|Update the properties of a [device](../resources/device.md) object.|
|[Delete device](../api/device-delete.md)|None|Deletes a [device](../resources/device.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.device",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.device",
  "id": "String (identifier)"
}
```

