---
title: "teamworkNetworkConfiguration resource type"
description: "Details of device network configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkNetworkConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of device network configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultGateway|String|Default gateway.|
|domainName|String|Network domain.|
|hostName|String|Hostname.|
|ipAddress|String|IPAddress.|
|isDhcpEnabled|Boolean|True if DHCP is enabled.|
|isPCPortEnabled|Boolean|True if PC Port is enabled.|
|primaryDns|String|Primary DNS.|
|secondaryDns|String|Secondary DNS.|
|subnetMask|String|Subnet mask.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkNetworkConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkNetworkConfiguration",
  "defaultGateway": "String",
  "domainName": "String",
  "hostName": "String",
  "ipAddress": "String",
  "isDhcpEnabled": "Boolean",
  "isPCPortEnabled": "Boolean",
  "primaryDns": "String",
  "secondaryDns": "String",
  "subnetMask": "String"
}
```

