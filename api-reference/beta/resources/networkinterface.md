---
title: "networkInterface resource type"
description: "Represents a Network Interface Card (NIC) associated with this host."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: cloud-pc
ms.technology: microsoft-graph
author: "preetikr"
---

# networkInterface resource type

Namespace: microsoft.graph

Represents a Network Interface Card (NIC) associated with this host.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|description|String|Description of the NIC (for example, Ethernet adapter, Wireless LAN adapter Local Area Connection, and so on).|
|ipV4Address|String|Last IPv4 address associated with this NIC.|
|ipV6Address|String|Last Public (also known as global) IPv6 address associated with this NIC.|
|localIpV6Address|String|Last local (link-local or site-local) IPv6 address associated with this NIC.|
|macAddress|String|MAC address of the NIC on this host.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.networkInterface"
}-->

```json
{
  "description": "String",
  "ipV4Address": "String",
  "ipV6Address": "String",
  "localIpV6Address": "String",
  "macAddress": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "networkInterface resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


