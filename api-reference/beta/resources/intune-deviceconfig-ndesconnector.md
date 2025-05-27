---
title: "ndesConnector resource type"
description: "Entity which represents an OnPrem Ndes connector."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# ndesConnector resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity which represents an OnPrem Ndes connector.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List ndesConnectors](../api/intune-deviceconfig-ndesconnector-list.md)|[ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) collection|List properties and relationships of the [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) objects.|
|[Get ndesConnector](../api/intune-deviceconfig-ndesconnector-get.md)|[ndesConnector](../resources/intune-deviceconfig-ndesconnector.md)|Read properties and relationships of the [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) object.|
|[Create ndesConnector](../api/intune-deviceconfig-ndesconnector-create.md)|[ndesConnector](../resources/intune-deviceconfig-ndesconnector.md)|Create a new [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) object.|
|[Delete ndesConnector](../api/intune-deviceconfig-ndesconnector-delete.md)|None|Deletes a [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md).|
|[Update ndesConnector](../api/intune-deviceconfig-ndesconnector-update.md)|[ndesConnector](../resources/intune-deviceconfig-ndesconnector.md)|Update the properties of a [ndesConnector](../resources/intune-deviceconfig-ndesconnector.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the NDES Connector.|
|lastConnectionDateTime|DateTimeOffset|Last connection time for the Ndes Connector|
|state|[ndesConnectorState](../resources/intune-deviceconfig-ndesconnectorstate.md)|Ndes Connector Status. Possible values are: `none`, `active`, `inactive`.|
|displayName|String|The friendly name of the Ndes Connector.|
|machineName|String|Name of the machine running on-prem certificate connector service.|
|enrolledDateTime|DateTimeOffset|Timestamp when on-prem certificate connector was enrolled in Intune.|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|
|connectorVersion|String|The build version of the Ndes Connector.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ndesConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ndesConnector",
  "id": "String (identifier)",
  "lastConnectionDateTime": "String (timestamp)",
  "state": "String",
  "displayName": "String",
  "machineName": "String",
  "enrolledDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "connectorVersion": "String"
}
```