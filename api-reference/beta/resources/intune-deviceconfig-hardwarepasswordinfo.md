---
title: "hardwarePasswordInfo resource type"
description: "Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hardwarePasswordInfo resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List hardwarePasswordInfos](../api/intune-deviceconfig-hardwarepasswordinfo-list.md)|[hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) collection|List properties and relationships of the [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) objects.|
|[Get hardwarePasswordInfo](../api/intune-deviceconfig-hardwarepasswordinfo-get.md)|[hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md)|Read properties and relationships of the [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) object.|
|[Create hardwarePasswordInfo](../api/intune-deviceconfig-hardwarepasswordinfo-create.md)|[hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md)|Create a new [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) object.|
|[Delete hardwarePasswordInfo](../api/intune-deviceconfig-hardwarepasswordinfo-delete.md)|None|Deletes a [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md).|
|[Update hardwarePasswordInfo](../api/intune-deviceconfig-hardwarepasswordinfo-update.md)|[hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md)|Update the properties of a [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the hardware password info|
|serialNumber|String|Device serial number|
|currentPassword|String|Current device password|
|previousPasswords|String collection|List of previous device passwords|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwarePasswordInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwarePasswordInfo",
  "id": "String (identifier)",
  "serialNumber": "String",
  "currentPassword": "String",
  "previousPasswords": [
    "String"
  ]
}
```
