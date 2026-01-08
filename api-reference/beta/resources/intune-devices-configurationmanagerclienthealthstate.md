---
title: "configurationManagerClientHealthState resource type"
description: "Configuration manager client health state"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# configurationManagerClientHealthState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configuration manager client health state

## Properties
|Property|Type|Description|
|:---|:---|:---|
|state|[configurationManagerClientState](../resources/intune-devices-configurationmanagerclientstate.md)|Current configuration manager client state. The possible values are: `unknown`, `installed`, `healthy`, `installFailed`, `updateFailed`, `communicationError`.|
|errorCode|Int32|Error code for failed state.|
|lastSyncDateTime|DateTimeOffset|Datetime for last sync with configuration manager management point.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationManagerClientHealthState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagerClientHealthState",
  "state": "String",
  "errorCode": 1024,
  "lastSyncDateTime": "String (timestamp)"
}
```