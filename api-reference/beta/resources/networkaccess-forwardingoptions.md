---
title: "forwardingOptions resource type"
description: "ForwardingOptions object includes the skipDnsLookupState settings, which determine whether DNS lookup will be performed at the client. This setting allows Microsoft 365 traffic to be forwarded directly to Azure Front Door. Alternatively, DNS resolution can be conducted at the Edge. This operation provides control over the traffic flow and DNS resolution strategy within the network infrastructure."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingOptions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

ForwardingOptions object includes the skipDnsLookupState settings, which determine whether DNS lookup will be performed at the client. This setting allows Microsoft 365 traffic to be forwarded directly to Azure Front Door. Alternatively, DNS resolution can be conducted at the Edge. This operation provides control over the traffic flow and DNS resolution strategy within the network infrastructure.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get forwardingOptions](../api/networkaccess-forwardingoptions-get.md)|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) object.|
|[Update forwardingOptions](../api/networkaccess-forwardingoptions-update.md)|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|skipDnsLookupState|microsoft.graph.networkaccess.status|Dns lookup options. The possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.forwardingOptions",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingOptions",
  "id": "String (identifier)",
  "skipDnsLookupState": "String"
}
```

