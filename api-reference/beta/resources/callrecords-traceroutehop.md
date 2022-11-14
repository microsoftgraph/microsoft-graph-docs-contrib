---
title: "traceRouteHop resource type"
description: "Represents the network trace route hops collected for a media stream."
ms.localizationpriority: medium
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# traceRouteHop resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the network trace route hops collected for a [media stream](callrecords-mediastream.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hopCount|Int32|The network path count of this hop that was used to compute the round-trip time.|
|ipAddress|String|IP address used for this hop in the network trace.|
|roundTripTime|Duration|The time from when the trace route packet was sent from the client to this hop and back to the client, denoted in [ISO 8601][] format. For example, 1 second is denoted as `PT1S`, where P is the duration designator, T is the time designator, and S is the second designator.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.traceRouteHop"
}-->

```json
{
  "hopCount": "Int32",
  "ipAddress": "String",
  "roundTripTime": "String (duration)"
}
```

[ISO 8601]: https://www.iso.org/iso/iso8601
