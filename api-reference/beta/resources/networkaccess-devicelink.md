---
title: "deviceLink resource type"
description: "A device link represents a single customer-premises equipment (CPE) at a physical branch site location that's connected to the Global Secure Access services."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# deviceLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A device link represents a single customer-premises equipment (CPE) at a physical branch site location that's connected to the Global Secure Access services.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceLinks](../api/networkaccess-branchsite-list-devicelinks.md)|[microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) collection|Get a list of the [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) objects and their properties.|
|[Create deviceLink](../api/networkaccess-branchsite-post-devicelinks.md)|[microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md)|Create a new [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.|
|[Get deviceLink](../api/networkaccess-devicelink-get.md)|[microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.|
|[Update deviceLink](../api/networkaccess-devicelink-update.md)|[microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md)|Update the properties of a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.|
|[Delete deviceLink](../api/networkaccess-branchsite-delete-devicelinks.md)|None|Delete a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|The border gateway protocol specifies the IP address and ASN for directing traffic from a link to the edge.|
|bandwidthCapacityInMbps|Int64|Determines the maximum allowed Mbps (megabits per second) bandwidth from a branch site. The possible values are:`250`,`500`,`750`,`1000`.|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|Specifies the manufacturer of the deviceLink. The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`, `unknownFutureValue`.|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddress|String|Specifies the client IPv4 of the link    |
|lastModifiedDateTime|DateTimeOffset|last modified time.|
|name|String|Name.|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|The connectivity settings, including the protocol, IPSec policy, and preshared key, are specified for establishing connectivity.|
|version|String|Version.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.deviceLink",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.deviceLink",
  "id": "String (identifier)",
  "name": "String",
  "ipAddress": "String",
  "deviceVendor": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "tunnelConfiguration": {
    "@odata.type": "microsoft.graph.networkaccess.tunnelConfiguration"
  },
  "bgpConfiguration": {
    "@odata.type": "microsoft.graph.networkaccess.bgpConfiguration"
  }
}
```

