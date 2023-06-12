---
title: "deviceLink resource type"
description: "A link is a a single customer premises customer-premises equipment (CPE), at a physical branch site location."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# deviceLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A link is a a single customer premises customer-premises equipment (CPE), at a physical branch site location.


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
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|Specifies the IP address and ASN of the border gateway protocol to send traffic from a link to the edge	|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|Specifies the vendor of the link.The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`.|
|id|String|idInherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddress|String|Specifies the client IPv4 of the link	|
|lastModifiedDateTime|DateTimeOffset|last Modified DateTime|
|name|String|name|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|Specifies connectivity settings (protocol, IPSec policy, and presharked key) for establishing connectivity	|
|version|String|version|

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

