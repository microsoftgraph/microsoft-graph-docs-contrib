---
title: "intelligenceProfile resource type"
description: "Provides up-to-date threat actor infrastructure visibility."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# intelligenceProfile resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

The Microsoft Defender Threat Intelligence Profiles (Intel Profiles) API provides the most up-to-date threat actor infrastructure visibility in the industry today, enabling threat intelligence and security operations (SecOps) teams to streamline their advanced threat hunting and analysis workflows. These teams have historically struggled to obtain visibility into the full extent of nation state and cybercriminal adversary infrastructures, creating blind spots in detection and response automation, hunting, and analytics. Sophisticated security professionals can use Microsoft Intelligence Profile APIs, along with the [indicators](../resources/security-intelligenceprofileindicator.md) and other associated markers, to automate defense of their organizations and track potentially malicious activity targeting their organization or industry. Users of the Microsoft Defender Threat Intelligence Profiles APIs have access to detailed threat actor intel profiles, including background information and interpretation guidance.

## Methods

| Method                                                                    | Return type                                                                                                               | Description                                                                                                                                     |
| :------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------- |
| [List intelligence profiles](../api/security-threatintelligence-list-intelprofiles.md)  | [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection                   | Get a list of the [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.    |
| [Get intelligence profile](../api/security-intelligenceprofile-get.md)     | [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)                              | Read the properties and relationships of a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object. |
| [List indicators](../api/security-intelligenceprofile-list-indicators.md) | [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection | Get a list of **intelligenceProfileIndicator** resources.                                                                                       |

## Properties

| Property                   | Type                                                                                                                                                  | Description                                                                                                                                                                                                                                                                                                                |
| :------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| aliases                    | String collection                                                                                                                                     | A list of commonly-known aliases for the threat intelligence included in the **intelligenceProfile**.                                                                                                                                                                                                                      |
| countriesOrRegionsOfOrigin | [microsoft.graph.security.intelligenceProfileCountryOrRegionOfOrigin](../resources/security-intelligenceProfileCountryOrRegionOfOrigin.md) collection | The country/region of origin for the given actor or threat associated with this **intelligenceProfile**.                                                                                                                                                                                                                   |
| description                | [microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)                                                                | A synopsis of the threat actor. This property places the threat actor in wider context, tracing its discovery, history, significant campaigns, targeting, techniques of note, affiliations with governments, law enforcement countermeasures, and any areas of dispute among the security community regarding attribution. |
| firstActiveDateTime        | DateTimeOffset                                                                                                                                        | The date and time when this **intelligenceProfile** was first active. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                                         |
| id                         | String                                                                                                                                                | The system generated ID for this **intelligenceProfile**.                                                                                                                                                                                                                                                                  |
| kind                       | microsoft.graph.security.intelligenceProfileKind                                                                                                      | A categorization of the type of this **intelligenceProfile**. The possible values are: `actor`, `tool`, `unknownFutureValue`.                                                                                                                                                                                              |
| summary                    | [microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)                                                                | A short summary of this **intelligenceProfile**.                                                                                                                                                                                                                                                                           |
| targets                    | String collection                                                                                                                                     | Known targets related to this **intelligenceProfile**.                                                                                                                                                                                                                                                                     |
| title                      | String                                                                                                                                                | The title of this **intelligenceProfile**.                                                                                                                                                                                                                                                                                 |
| tradecraft                 | [microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)                                                                | Formatted information featuring a description of the distinctive tactics, techniques, and procedures (TTP) of the group, followed by a list of all known custom, commodity, and publicly available implants used by the group.                                                                                             |

## Relationships

| Relationship | Type                                                                                                                      | Description                                                               |
| :----------- | :------------------------------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------ |
| indicators   | [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection | Includes an assemblage of high-fidelity network indicators of compromise. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.intelligenceProfile",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.intelligenceProfile",
  "aliases": ["String"],
  "description": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "firstActiveDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "kind": "String",
  "countriesOrRegionsOfOrigin": [
    {
      "@odata.type": "microsoft.graph.security.intelligenceProfileCountryOrRegionOfOrigin"
    }
  ],
  "summary": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "targets": ["String"],
  "title": "String",
  "tradecraft": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  }
}
```
