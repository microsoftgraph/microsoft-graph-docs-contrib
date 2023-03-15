---
title: "microsoftTunnelConfiguration resource type"
description: "Entity that represents a collection of Microsoft Tunnel settings"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# microsoftTunnelConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a collection of Microsoft Tunnel settings

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftTunnelConfigurations](../api/intune-mstunnel-microsofttunnelconfiguration-list.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) collection|List properties and relationships of the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) objects.|
|[Get microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-get.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|Read properties and relationships of the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.|
|[Create microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-create.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|Create a new [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.|
|[Delete microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-delete.md)|None|Deletes a [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md).|
|[Update microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-update.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|Update the properties of a [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the configuration id. Supports: $delete, $update. $Insert, $skip, $top is not supported. Read-only.|
|displayName|String|The display name for the server configuration. This property is required when a server is created.|
|description|String|The configuration's description (optional)|
|network|String|The subnet that will be used to allocate virtual address for the clients|
|dnsServers|String collection|The DNS servers that will be used by the clients|
|defaultDomainSuffix|String|The Default Domain appendix that will be used by the clients|
|routesInclude|String collection|The routes that will be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteIncludes'.|
|routesExclude|String collection|Subsets of the routes that will not be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteExcludes'.|
|routeIncludes|String collection|The routes that will be routed by the server|
|routeExcludes|String collection|Subsets of the routes that will not be routed by the server|
|splitDNS|String collection|The domains that will be resolved using the provided dns servers|
|listenPort|Int32|The port that both TCP and UPD will listen over on the server|
|advancedSettings|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Additional settings that may be applied to the server|
|lastUpdateDateTime|DateTimeOffset|When the configuration was last updated|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance|
|disableUdpConnections|Boolean|When DisableUdpConnections is set, the clients and VPN server will not use DTLS connections to transfer data.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "network": "String",
  "dnsServers": [
    "String"
  ],
  "defaultDomainSuffix": "String",
  "routesInclude": [
    "String"
  ],
  "routesExclude": [
    "String"
  ],
  "routeIncludes": [
    "String"
  ],
  "routeExcludes": [
    "String"
  ],
  "splitDNS": [
    "String"
  ],
  "listenPort": 1024,
  "advancedSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "lastUpdateDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "disableUdpConnections": true
}
```
