---
title: "deviceManagementDomainJoinConnector resource type"
description: "A Domain Join Connector is a connector that is responsible to allocate (and delete) machine account blobs"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementDomainJoinConnector resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A Domain Join Connector is a connector that is responsible to allocate (and delete) machine account blobs

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementDomainJoinConnectors](../api/intune-odj-devicemanagementdomainjoinconnector-list.md)|[deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md) collection|List properties and relationships of the [deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md) objects.|
|[Get deviceManagementDomainJoinConnector](../api/intune-odj-devicemanagementdomainjoinconnector-get.md)|[deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md)|Read properties and relationships of the [deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md) object.|
|[Create deviceManagementDomainJoinConnector](../api/intune-odj-devicemanagementdomainjoinconnector-create.md)|[deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md)|Create a new [deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md) object.|
|[Delete deviceManagementDomainJoinConnector](../api/intune-odj-devicemanagementdomainjoinconnector-delete.md)|None|Deletes a [deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md).|
|[Update deviceManagementDomainJoinConnector](../api/intune-odj-devicemanagementdomainjoinconnector-update.md)|[deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md)|Update the properties of a [deviceManagementDomainJoinConnector](../resources/intune-odj-devicemanagementdomainjoinconnector.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier to represent a connector.|
|displayName|String|The connector display name.|
|lastConnectionDateTime|DateTimeOffset|Last time connector contacted Intune.|
|state|[deviceManagementDomainJoinConnectorState](../resources/intune-odj-devicemanagementdomainjoinconnectorstate.md)|The connector state. Possible values are: `active`, `error`, `inactive`.|
|version|String|The version of the connector.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementDomainJoinConnector"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementDomainJoinConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "lastConnectionDateTime": "String (timestamp)",
  "state": "String",
  "version": "String"
}
```