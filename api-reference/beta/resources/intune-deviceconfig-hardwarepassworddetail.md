---
title: "hardwarePasswordDetail resource type"
description: "Device BIOS password information for devices with managed BIOS and firmware configuration, which provides device serial number, list of previous passwords, and current password."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# hardwarePasswordDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device BIOS password information for devices with managed BIOS and firmware configuration, which provides device serial number, list of previous passwords, and current password.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List hardwarePasswordDetails](../api/intune-deviceconfig-hardwarepassworddetail-list.md)|[hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) collection|List properties and relationships of the [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) objects.|
|[Get hardwarePasswordDetail](../api/intune-deviceconfig-hardwarepassworddetail-get.md)|[hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md)|Read properties and relationships of the [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) object.|
|[Create hardwarePasswordDetail](../api/intune-deviceconfig-hardwarepassworddetail-create.md)|[hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md)|Create a new [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) object.|
|[Delete hardwarePasswordDetail](../api/intune-deviceconfig-hardwarepassworddetail-delete.md)|None|Deletes a [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md).|
|[Update hardwarePasswordDetail](../api/intune-deviceconfig-hardwarepassworddetail-update.md)|[hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md)|Update the properties of a [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the managed device. This ID is assigned at enrollment time. This is different than the Entra device ID, this one is for the managedDevice object itself. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.|
|serialNumber|String|The device serial number as defined by the device manufacturer. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.|
|currentPassword|String|The current device's BIOS password. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.|
|previousPasswords|String collection|The list of all the previous device BIOS passwords. Supports: $filter, $select, $top, $skip. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwarePasswordDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwarePasswordDetail",
  "id": "String (identifier)",
  "serialNumber": "String",
  "currentPassword": "String",
  "previousPasswords": [
    "String"
  ]
}
```