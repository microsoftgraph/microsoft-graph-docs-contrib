---
title: "deviceManagement resource type"
description: "Singleton that acts as container for a collection of Resource Access entities."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton that acts as container for a collection of Resource Access entities.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-mstunnel-devicemanagement-get.md)|[deviceManagement](../resources/intune-mstunnel-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-mstunnel-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-mstunnel-devicemanagement-update.md)|[deviceManagement](../resources/intune-mstunnel-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-mstunnel-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|microsoftTunnelConfigurations|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) collection|Collection of MicrosoftTunnelConfiguration settings associated with account.|
|microsoftTunnelSites|[microsoftTunnelSite](../resources/intune-mstunnel-microsofttunnelsite.md) collection|Collection of MicrosoftTunnelSite settings associated with account.|
|microsoftTunnelHealthThresholds|[microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) collection|Collection of MicrosoftTunnelHealthThreshold settings associated with account.|
|microsoftTunnelServerLogCollectionResponses|[microsoftTunnelServerLogCollectionResponse](../resources/intune-mstunnel-microsofttunnelserverlogcollectionresponse.md) collection|Collection of MicrosoftTunnelServerLogCollectionResponse settings associated with account.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```




