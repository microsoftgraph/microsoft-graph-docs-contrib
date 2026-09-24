---
title: "provisionResponse resource type"
description: "Represents the response returned by the provision action when an approved Virtual Desktop Infrastructure (VDI) provider provisions a device."
author: "mjsantani"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 06/19/2026
---

# provisionResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response returned by the [provision](../api/device-provision.md) action of the [device](device.md) resource.

An approved Virtual Desktop Infrastructure (VDI) provisioning service receives this response after it provisions a device and passes it to the device so that the device can complete its registration with the directory.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|challenge|String|The cryptographic challenge that the device uses to complete its registration with the directory.|
|deviceId|String|The unique identifier of the provisioned device.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provisionResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.provisionResponse",
  "challenge": "String",
  "deviceId": "String"
}
```