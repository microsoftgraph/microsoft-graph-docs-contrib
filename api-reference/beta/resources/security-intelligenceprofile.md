---
title: "intelligenceProfile resource type"
description: "Provides up-to-date threat actor infrastructure visibility."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfile resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Defender Threat Intelligence Profiles (Intel Profile) API provides the most up-to-date threat actor infrastructure visibility in the industry today, enabling threat intelligence and security operations (SecOps) teams to streamline their advanced threat hunting and analysis workflows. These teams have historically struggled to obtain visibility into the full extent of nation state and cybercriminal adversary infrastructures, creating blind spots in detection and response automation, hunting, and analytics. Sophisticated security professionals can use Microsoft Intelligence Profile APIs, along with the [indicators](../resources/security-intelligenceprofileindicator.md) and other associated markers, to automate defense of their organizations and track potentially malicious activity targeting their organization or industry. Users of the Microsoft Defender Threat Intelligence Profiles APIs have access to detailed threat actor intel profiles, including background information and interpretation guidance.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List intelligenceProfiles](../api/security-intelligenceprofile-list.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get a list of the [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.|
|[Get intelligenceProfile](../api/security-intelligenceprofile-get.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)|Read the properties and relationships of a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.|
|[List indicators](../api/security-intelligenceprofile-list-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get a list of **intelligenceProfileIndicator** resources.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aliases|String collection|A list of commonly-known aliases for the threat intelligence included in the **intelligenceProfile**.|
|description|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|A synopsis of the threat actor. This property places the threat actor in wider context, tracing its discovery, history, significant campaigns, targeting, techniques of note, affiliations with governments, law enforcement countermeasures, and any areas of dispute among the security community regarding attribution.|
|firstActiveDateTime|DateTimeOffset|The date and time when this **intelligenceProfile** was first active.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The system generated ID for this **intelligenceProfile**.|
|kind|microsoft.graph.security.intelligenceProfileKind|A categorization of the type of this **intelligenceProfile**. The possible values are: `actor`, `tool`, `unknownFutureValue`.|
|sponsorStates|[microsoft.graph.security.intelligenceProfileSponsorState](../resources/security-intelligenceprofilesponsorstate.md) collection|Known states (such as a country or government) who have sponsored threat actors associated with this **intelligenceProfile**. This is also known as the country/region of origin for the given actor or threat.|
|summary|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|A short summary of this **intelligenceProfile**.|
|targets|String collection|Known targets related to this **intelligenceProfile**.|
|title|String|The title of this **intelligenceProfile**.|
|tradecraft|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|Formatted information featuring a description of the distinctive tactics, techniques, and procedures (TTP) of the group, followed by a list of all known custom, commodity, and publicly available implants used by the group.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|indicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Includes an assemblage of high-fidelity network indicators of compromise.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.intelligenceProfile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.intelligenceProfile",
  "aliases": [
    "String"
  ],
  "description": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "firstActiveDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "kind": "String",
  "sponsorStates": [
    {
      "@odata.type": "microsoft.graph.security.intelligenceProfileSponsorState"
    }
  ],
  "summary": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "targets": [
    "String"
  ],
  "title": "String",
  "tradecraft": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  }
}
```
