---
title: "deviceLink resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# deviceLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


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
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|**TODO: Add Description**|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|**TODO: Add Description**.The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddress|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

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

