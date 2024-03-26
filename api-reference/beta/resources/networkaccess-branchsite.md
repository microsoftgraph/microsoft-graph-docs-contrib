---
title: "branch resource type (deprecated)"
description: "A branch connects the Customer Premises Equipment (CPE) to the Global Secure Access services edge network."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# branchSite resource type (deprecated)

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> Deprecated and to be retired soon. Use the [remoteNetwork resource type](../resources/networkaccess-remotenetwork.md) and its associated methods instead.

A branch connects the Customer Premises Equipment (CPE) to the Global Secure Access services edge network.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List branchSites](../api/networkaccess-connectivity-list-branches.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) collection|Get a list of the [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) objects and their properties.|
|[Create branchSite](../api/networkaccess-connectivity-post-branches.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md)|Create a new [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object.|
|[Get branchSite](../api/networkaccess-branchsite-get.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object.|
|[Update branchSite](../api/networkaccess-branchsite-update.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md)|Update the properties of a [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object.|
|[Delete branchSite](../api/networkaccess-branchsite-delete.md)|None|Delete a [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bandwidthCapacity|Int64|Determines the maximum allowed Mbps (megabits per second) bandwidth from a branch site. The possible values are:`250`,`500`,`750`,`1000`.|
|connectivityState|microsoft.graph.networkaccess.connectivityState|Determines the branch site status. The possible values are: `pending`, `connected`, `inactive`, `error`.|
|id|String|Identifier for the branch. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|last modified time.|
|name|String|Name.|
|region|String|The branch site is created in the specified location. The possible value are: `eastUS`, `eastUS2`, `westUS`, `westUS2`, `westUS3`, `centralUS`, `northCentralUS`, `southCentralUS`, `northEurope`, `westEurope`, `franceCentral`, `germanyWestCentral`, `switzerlandNorth`, `ukSouth`, `canadaEast`, `canadaCentral`, `southAfricaWest`, `southAfricaNorth`, `uaeNorth`, `australiaEast`, `westCentralUS`, `centralIndia`, `southEastAsia`, `swedenCentral`, `southIndia`, `australiaSouthEast`, `koreaCentral`, `polandCentral`, `brazilSouth`, `japanEast`, `japanWest`, `unknownFutureValue`.|
|version|String|The branch version.|
|country (deprecated)|String|The branch site is created in the specified country. **DO NOT USE.**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connectivityConfiguration|[microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md) collection|Specifies the connectivity details of all device links associated with a branch.|
|deviceLinks|[microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) collection|Each unique CPE device associated with a branch is specified. Supports `$expand`.|
|forwardingProfiles|[microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) collection|Each forwarding profile associated with a branch site is specified. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.branchSite",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.branchSite",
  "id": "String (identifier)",
  "name": "String",
  "country": "String",
  "region": "String",
  "connectivityState": "String",
  "bandwidthCapacity": "Integer",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

