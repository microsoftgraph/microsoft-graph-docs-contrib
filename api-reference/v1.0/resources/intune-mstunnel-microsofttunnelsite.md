---
title: "microsoftTunnelSite resource type"
description: "Entity that represents a Microsoft Tunnel site"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# microsoftTunnelSite resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a Microsoft Tunnel site

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftTunnelSites](../api/intune-mstunnel-microsofttunnelsite-list.md)|[microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) collection|List properties and relationships of the [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) objects.|
|[Get microsoftTunnelSite](../api/intune-mstunnel-microsofttunnelsite-get.md)|[microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md)|Read properties and relationships of the [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) object.|
|[Create microsoftTunnelSite](../api/intune-mstunnel-microsofttunnelsite-create.md)|[microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md)|Create a new [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) object.|
|[Delete microsoftTunnelSite](../api/intune-mstunnel-microsofttunnelsite-delete.md)|None|Deletes a [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md).|
|[Update microsoftTunnelSite](../api/intune-mstunnel-microsofttunnelsite-update.md)|[microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md)|Update the properties of a [microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the site id. $Insert, $skip, $top is not supported. Read-only.|
|displayName|String|The display name for the site. This property is required when a site is created.|
|description|String|The site's description (optional)|
|publicAddress|String|The site's public domain name or IP address|
|upgradeWindowUtcOffsetInMinutes|Int32|The site's timezone represented as a minute offset from UTC|
|upgradeWindowStartTime|TimeOfDay|The site's upgrade window start time of day|
|upgradeWindowEndTime|TimeOfDay|The site's upgrade window end time of day|
|upgradeAutomatically|Boolean|The site's automatic upgrade setting. True for automatic upgrades, false for manual control|
|upgradeAvailable|Boolean|The site provides the state of when an upgrade is available|
|internalNetworkProbeUrl|String|The site's Internal Network Access Probe URL|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|microsoftTunnelConfiguration|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|The MicrosoftTunnelConfiguration that has been applied to this MicrosoftTunnelSite|
|microsoftTunnelServers|[microsoftTunnelServer](../resources/intune-mstunnel-microsofttunnelserver.md) collection|A list of MicrosoftTunnelServers that are registered to this MicrosoftTunnelSite|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelSite"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelSite",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publicAddress": "String",
  "upgradeWindowUtcOffsetInMinutes": 1024,
  "upgradeWindowStartTime": "String (time of day)",
  "upgradeWindowEndTime": "String (time of day)",
  "upgradeAutomatically": true,
  "upgradeAvailable": true,
  "internalNetworkProbeUrl": "String",
  "roleScopeTagIds": [
    "String"
  ]
}
```




