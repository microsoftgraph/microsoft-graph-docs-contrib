---
title: "feedbackTokenSet resource type"
description: "The feedbackTokenSet type"
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
---

# feedbackTokenSet resource type

Namespace: microsoft.graph.callRecords

This is an _open type_ that represents the set of feedback tokens provided by the user of this endpoint for the Session. This is a set of Boolean properties. The property names shouldn't be relied upon since they may change depending on what tokens are offered to the user.

## Properties

Explicit property names won't be documented since the feedback token names can change, hence this is an [open type](/aspnet/web-api/overview/odata-support-in-aspnet-web-api/odata-v4/use-open-types-in-odata-v4).

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.feedbackTokenSet",
  "baseType": null
}-->

```json
{
  "BackgroundNoise": true,
  "DistortedSpeech": true,
  "Echo": false,
  "ElectronicFeedback": false,
  "MuffledSpeech": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "feedbackTokenSet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
