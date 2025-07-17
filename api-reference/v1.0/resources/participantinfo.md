---
title: "participantInfo resource type"
description: "Contains additional properties about the participant identity"
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# participantInfo resource type

Namespace: microsoft.graph

Contains additional properties about the participant identity

## Properties

| Property       | Type                          | Description                                                                                                                                                |
|:---------------|:------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| countryCode    | String                        | The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.                             |
| endpointType   | String                        | The type of endpoint the participant is using. Possible values are: `default`, `skypeForBusiness`, or `skypeForBusinessVoipPhone`. Read-only.              |
| identity       | [identitySet](identityset.md) | The [identitySet](identityset.md) associated with this participant. Read-only.                                                                             |
| languageId     | String                        | The language culture string. Read-only.                                                                                                                    |
| participantId    | String                          | The participant ID of the participant. Read-only.    |
| region         | String                        | The home region of the participant. This can be a country, a continent, or a larger geographic region. This doesn't change based on the participant's current physical location. Read-only. |


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "countryCode",
    "endpointType",
    "languageId",
    "region",
    "participantId"
  ],
  "@odata.type": "microsoft.graph.participantInfo"
}-->
```json
{
  "countryCode": "String",
  "identity": { "@odata.type": "#microsoft.graph.identitySet" },
  "endpointType": "default | skypeForBusiness | skypeForBusinessVoipPhone",
  "languageId": "String",
  "region": "String",
  "participantId": "String"
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

