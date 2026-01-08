---
title: "deviceHealthScriptIntegerParameter resource type"
description: "Properties of the  Integer script parameter."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceHealthScriptIntegerParameter resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Properties of the  Integer script parameter.


Inherits from [deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the param Inherited from [deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md)|
|description|String|The description of the param Inherited from [deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md)|
|isRequired|Boolean|Whether the param is required Inherited from [deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md)|
|applyDefaultValueWhenNotAssigned|Boolean|Whether Apply DefaultValue When Not Assigned Inherited from [deviceHealthScriptParameter](../resources/intune-devices-devicehealthscriptparameter.md)|
|defaultValue|Int32|The default value of Integer param. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptIntegerParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptIntegerParameter",
  "name": "String",
  "description": "String",
  "isRequired": true,
  "applyDefaultValueWhenNotAssigned": true,
  "defaultValue": 1024
}
```