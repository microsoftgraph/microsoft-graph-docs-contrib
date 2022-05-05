---
title: "teamworkNetworkConfiguration resource type"
description: "Represents the details about the network configuration for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkNetworkConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the network configuration for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultGateway|String|The default gateway is the path used to pass information when the destination is unknown to the device.|
|domainName|String|The network domain of the device, for example, contoso.com.|
|hostName|String|The device name on a network.|
|ipAddress|String|The IP address is a numerical label that uniquely identifies every device connected to the internet.|
|isDhcpEnabled|Boolean|`True` if DHCP is enabled.|
|isPCPortEnabled|Boolean|`True` if the PC port is enabled.|
|primaryDns|String|A primary DNS is the first point of contact for a device that translates the hostname into an IP address.|
|secondaryDns|String|A secondary DNS is used when the primary DNS is not available.|
|subnetMask|String|A subnet mask is a number that distinguishes the network address and the host address within an IP address.|


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

