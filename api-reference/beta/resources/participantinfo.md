---
title: "participantInfo resource type"
description: "Contains additional properties about the participant identity"
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# participantInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains additional properties about the participant identity

## Properties

| Property       | Type                          | Description  |
|:---------------|:------------------------------|:-------------|
| countryCode    | String                        | The ISO 3166-1 Alpha-2 country code of the participant. Read-only. Server generated. |
| endpointType   | String                        | The type of endpoint the participant is using. Possible values are: `default`, `voicemail`, `skypeForBusiness`, or `skypeForBusinessVoipPhone`. Read-only. Server generated. |
| identity       | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this participant. Read-only. Server generated. |
| languageId     | String                        | The language culture string. Read-only. Server generated. |
| region         | String                        | Region of the participant. Read-only. Server generated. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "countryCode",
    "endpointType",
    "languageId",
    "region"
  ],
  "@odata.type": "microsoft.graph.participantInfo"
}-->
```json
{
  "countryCode": "String",
  "identity": { "@odata.type": "#microsoft.graph.identitySet" },
  "endpointType": "default | voicemail | skypeForBusiness | skypeForBusinessVoipPhone",
  "languageId": "String",
  "region": "String"
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
