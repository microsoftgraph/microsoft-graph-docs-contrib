---
title: "forwardingOptions resource type"
description: "Defines the traffic forwarding options for the tenant. The forwardingOptions object contains the skipDnsLookupState settings, which determine whether DNS lookup will be performed at the client, allowing M365 traffic to be forwarded directly to Azure Front Door, or if DNS resolution will be conducted at the Edge. This operation provides control over the traffic flow and DNS resolution strategy within the network infrastructure."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingOptions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the traffic forwarding options for the tenant. The forwardingOptions object contains the skipDnsLookupState settings, which determine whether DNS lookup will be performed at the client, allowing M365 traffic to be forwarded directly to Azure Front Door, or if DNS resolution will be conducted at the Edge. This operation provides control over the traffic flow and DNS resolution strategy within the network infrastructure

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingOptions](../api/networkaccess-settings-list-forwardingoptions.md)|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) objects and their properties.|
|[Create forwardingOptions](../api/networkaccess-settings-post-forwardingoptions.md)|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md)|Create a new [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) object.|
|[Get forwardingOptions](../api/networkaccess-forwardingoptions-get.md)|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) object.|
|[Update forwardingOptions](../api/networkaccess-forwardingoptions-update.md)|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) object.|
|[Delete forwardingOptions](../api/networkaccess-settings-delete-forwardingoptions.md)|None|Delete a [microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingoptions.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id, Inherited from [microsoft.graph.entity](../resources/entity.md).|
|skipDnsLookupState|microsoft.graph.networkaccess.status|The forwardingOptions control manages the various traffic forwarding options.The possible values are: `enabled`, `disabled`.|

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

