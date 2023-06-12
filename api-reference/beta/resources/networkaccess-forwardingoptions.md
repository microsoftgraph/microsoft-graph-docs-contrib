---
title: "forwardingOptions resource type"
description: "Admins can enable/disable the ability to skip DNS lookup at the edge and forward M365 traffic directly to Front Door using the client-resolved destination IP. As a result, admins will have consistency for both L3 and L4/L7 use cases, avoid an additional point of failure in the traffic forwarding path, and retain DNS resolution done locally."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingOptions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Admins can enable/disable the ability to skip DNS lookup at the edge and forward M365 traffic directly to Front Door using the client-resolved destination IP. As a result, admins will have consistency for both L3 and L4/L7 use cases, avoid an additional point of failure in the traffic forwarding path, and retain DNS resolution done locally.

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

