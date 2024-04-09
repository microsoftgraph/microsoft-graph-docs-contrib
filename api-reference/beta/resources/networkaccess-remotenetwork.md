---
title: "remoteNetwork resource type"
description: "A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service though IPsec tunnels."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# remoteNetwork resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service though IPsec tunnels.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List remoteNetworks](../api/networkaccess-connectivity-list-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) collection|Get a list of the [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) objects and their properties.|
|[Create remoteNetwork](../api/networkaccess-connectivity-post-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md)|Create a new [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object.|
|[Get remoteNetwork](../api/networkaccess-remotenetwork-get.md)|[microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object.|
|[Update remoteNetwork](../api/networkaccess-remotenetwork-update.md)|[microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md)|Update the properties of a [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object.|
|[Delete remoteNetwork](../api/networkaccess-connectivity-delete-remotenetworks.md)|None|Delete a [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the remote network. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|last modified time.|
|name|String|Name.|
|region|microsoft.graph.networkaccess.region|Specify the region closest to your remote network. The possible value are: `eastUS`, `eastUS2`, `westUS`, `westUS2`, `westUS3`, `centralUS`, `northCentralUS`, `southCentralUS`, `northEurope`, `westEurope`, `franceCentral`, `germanyWestCentral`, `switzerlandNorth`, `ukSouth`, `canadaEast`, `canadaCentral`, `southAfricaWest`, `southAfricaNorth`, `uaeNorth`, `australiaEast`, `westCentralUS`, `centralIndia`, `southEastAsia`, `swedenCentral`, `southIndia`, `australiaSouthEast`, `koreaCentral`, `koreaSouth`, `polandCentral`, `brazilSouth`, `japanEast`, `japanWest`, `koreaSouth`, `italyNorth`, `franceSouth`, `israelCentral`, `unknownFutureValue`.|
|version|String|Remote network version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectivityConfiguration|[microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration](../resources/networkaccess-remotenetworkconnectivityconfiguration.md) collection|Specifies the connectivity details of all device links associated with a remote network.|
|deviceLinks|[microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) collection|Each unique CPE device associated with a remote network is specified. Supports `$expand`.|
|forwardingProfiles|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Each forwarding profile associated with a remote network is specified. Supports `$expand` and `$select`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.remoteNetwork",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.remoteNetwork",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "region": "microsoft.graph.networkaccess.region",
  "version": "String",
}
```

