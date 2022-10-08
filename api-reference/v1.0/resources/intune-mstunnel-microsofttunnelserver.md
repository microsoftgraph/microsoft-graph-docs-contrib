---
title: "microsoftTunnelServer resource type"
description: "Entity that represents a single Microsoft Tunnel server"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# microsoftTunnelServer resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a single Microsoft Tunnel server

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftTunnelServers](../api/intune-mstunnel-microsofttunnelserver-list.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) collection|List properties and relationships of the [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) objects.|
|[Get microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-get.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md)|Read properties and relationships of the [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.|
|[Create microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-create.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md)|Create a new [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.|
|[Delete microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-delete.md)|None|Deletes a [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md).|
|[Update microsoftTunnelServer](../api/intune-mstunnel-microsofttunnelserver-update.md)|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md)|Update the properties of a [microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the managed server. This id is assigned at enrollment time. Supports: $delete. $Update, $insert, $skip, $top is not supported. Read-only.|
|displayName|String|The display name for the server. This property is required when a server is created and cannot be cleared during updates.|
|tunnelServerHealthStatus|[microsoftTunnelServerHealthStatus](../resources/intune-mstunnel-microsofttunnelserverhealthstatus.md)|Indicates the server's health Status as of the last evaluation time. Health is evaluated every 60 seconds, and the possible values are: unknown, healthy, unhealthy, warning, offline, upgradeInProgress, upgradeFailed. Possible values are: `unknown`, `healthy`, `unhealthy`, `warning`, `offline`, `upgradeInProgress`, `upgradeFailed`.|
|lastCheckinDateTime|DateTimeOffset|Indicates when the server last checked in|
|agentImageDigest|String|The digest of the current agent image running on this server|
|serverImageDigest|String|The digest of the current server image running on this server|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelServer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelServer",
  "id": "String (identifier)",
  "displayName": "String",
  "tunnelServerHealthStatus": "String",
  "lastCheckinDateTime": "String (timestamp)",
  "agentImageDigest": "String",
  "serverImageDigest": "String"
}
```




