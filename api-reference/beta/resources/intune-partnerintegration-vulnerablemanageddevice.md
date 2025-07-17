---
title: "vulnerableManagedDevice resource type"
description: "This entity represents a device associated with a task."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# vulnerableManagedDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This entity represents a device associated with a task.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List vulnerableManagedDevices](../api/intune-partnerintegration-vulnerablemanageddevice-list.md)|[vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md) collection|List properties and relationships of the [vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md) objects.|
|[Get vulnerableManagedDevice](../api/intune-partnerintegration-vulnerablemanageddevice-get.md)|[vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md)|Read properties and relationships of the [vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md) object.|
|[Create vulnerableManagedDevice](../api/intune-partnerintegration-vulnerablemanageddevice-create.md)|[vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md)|Create a new [vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md) object.|
|[Delete vulnerableManagedDevice](../api/intune-partnerintegration-vulnerablemanageddevice-delete.md)|None|Deletes a [vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md).|
|[Update vulnerableManagedDevice](../api/intune-partnerintegration-vulnerablemanageddevice-update.md)|[vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md)|Update the properties of a [vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The entity key, and AAD device ID.|
|managedDeviceId|String|The Intune managed device ID.|
|displayName|String|The device name.|
|lastSyncDateTime|DateTimeOffset|The last sync date.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vulnerableManagedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vulnerableManagedDevice",
  "id": "String (identifier)",
  "managedDeviceId": "String",
  "displayName": "String",
  "lastSyncDateTime": "String (timestamp)"
}
```