---
title: "hardwarePasswordInfo resource type"
description: "Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices. Starting from June, 2024 (Intune Release 2406), this type will no longer be supported and will be marked as deprecated"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# hardwarePasswordInfo resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices. Starting from June, 2024 (Intune Release 2406), this type will no longer be supported and will be marked as deprecated

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
|id|String|A unique string Id that is based on associated Intune Device Id. This property is read-only.|
|serialNumber|String|Associated device's serial number . This property is read-only.|
|currentPassword|String|Current device password. This property is read-only.|
|previousPasswords|String collection|List of previous device passwords. This property is read-only.|

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