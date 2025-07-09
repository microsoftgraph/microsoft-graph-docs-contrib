---
title: "vppLicensingType resource type"
description: "Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# vppLicensingType resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|supportUserLicensing|Boolean|Whether the program supports the user licensing type.|
|supportDeviceLicensing|Boolean|Whether the program supports the device licensing type.|
|supportsUserLicensing|Boolean|Whether the program supports the user licensing type.|
|supportsDeviceLicensing|Boolean|Whether the program supports the device licensing type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vppLicensingType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vppLicensingType",
  "supportUserLicensing": true,
  "supportDeviceLicensing": true,
  "supportsUserLicensing": true,
  "supportsDeviceLicensing": true
}
```