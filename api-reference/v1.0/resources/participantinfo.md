---
title: "participantInfo resource type"
description: "Contains additional properties about the participant identity"
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# participantInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains additional properties about the participant identity

## Properties

| Property       | Type                          | Description                                                                                                                                                |
|:---------------|:------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| endpointType   | String                        | The type of endpoint the participant is using. Possible values are: `default`, `skypeForBusiness`, or `skypeForBusinessVoipPhone`. Read-only.              |
| identity       | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this participant. Read-only.                                                                             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "endpointType",
  ],
  "@odata.type": "microsoft.graph.participantInfo"
}-->
```json
{
  "identity": { "@odata.type": "#microsoft.graph.identitySet" },
  "endpointType": "default | skypeForBusiness | skypeForBusinessVoipPhone"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
