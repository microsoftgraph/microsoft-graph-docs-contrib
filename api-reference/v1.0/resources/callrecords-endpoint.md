---
title: "endpoint resource type"
description: "The endpoint type"
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# endpoint resource type

Namespace: microsoft.graph.callRecords

Represents an endpoint in a call. The endpoint could be a user's device, a meeting,
an application/bot, etc. The [participantEndpoint](callrecords-participantendpoint.md) and
[serviceEndpoint](callrecords-serviceendpoint.md) types inherit from this type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|userAgent|[microsoft.graph.callRecords.userAgent](callrecords-useragent.md)|User-agent reported by this endpoint.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.endpoint",
  "baseType": null
}-->

```json
{
  "userAgent": {"@odata.type": "microsoft.graph.callRecords.userAgent"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "endpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
