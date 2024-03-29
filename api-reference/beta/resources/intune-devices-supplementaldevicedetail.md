---
title: "supplementalDeviceDetail resource type"
description: "Represents a property of the device."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# supplementalDeviceDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a property of the device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|propertyName|String|The name of a property provided by the device, e.g. `SupplementalDeviceOSVersion`, `DiagnosticSubmissionEnabled`, `IsActivationLockSupported`, etc. This will directly match what is provided by the device. Read only.|
|propertyValue|String|The value of a property provided by the device, e.g. `(a)`, `true`. This will directly match what is provided by the device. Read only.|
|propertyType|String|The object type of a property provided by the device, e.g. `boolean`, `string`, `datetime`, '`dictionary`. Any complex type will be represented as a dictionary. Read only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.supplementalDeviceDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.supplementalDeviceDetail",
  "propertyName": "String",
  "propertyValue": "String",
  "propertyType": "String"
}
```
