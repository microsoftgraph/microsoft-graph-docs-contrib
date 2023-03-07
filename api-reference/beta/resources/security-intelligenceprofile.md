---
title: "intelligenceProfile resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfile resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Threat Intelligence Profiles API provides the most up-to-date threat actor infrastructure visibility in the industry today, enabling Threat Intelligence and Security Operations (SecOps) teams to streamline their advanced threat hunting and analysis workflows. These teams have historically struggled to obtain visibility into the full extent of nation state and cybercriminal adversary infrastructures, creating blind spots in detection and response automation, hunting, and analytics. Sophisticated security professionals can use Microsoft’s Intelligence Profile APIs, along with the [indicators](../resources/security-intelligenceprofileindicator.md) and other associated markers, to automate defense of their organizations and track potentially malicious activity targeting their organization or industry. Users of the Microsoft Threat Intelligence Profiles APIs have access to detailed threat actor intel profiles, including background information and interpretation guidance.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List intelligenceProfiles](../api/security-intelligenceprofile-list.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get a list of the [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.|
|[Get intelligenceProfile](../api/security-intelligenceprofile-get.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)|Read the properties and relationships of a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.|
|[List indicators](../api/security-intelligenceprofile-list-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get the intelligenceProfileIndicator resources from the indicators navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aliases|String collection|A list of commonly-known aliases for the Threat Intelligence included in the `intelligenceProfile`.|
|description|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|A synopsis of the threat actor. This property places the threat actor in wider context, tracing its discovery, history, significant campaigns, targeting, techniques of note, affiliations with governments, law enforcement countermeasures, and any areas of dispute among the security community regarding attribution.|
|firstActiveDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|The system generated id for this Intelligence Profile|
|kind|microsoft.graph.security.intelligenceProfileKind|A categorization of the type of this `intelligenceProfile`. The possible values are: `actor`, `tool`, `unknownFutureValue`.|
|sponsorStates|[microsoft.graph.security.intelligenceProfileSponsorState](../resources/security-intelligenceprofilesponsorstate.md) collection|**TODO: Add Description**|
|summary|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|**TODO: Add Description**|
|targets|String collection|Known Targets related to this Intelligence Profile|
|title|String|The title of this Intelligence Profile|
|tradecraft|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|Formatted information featuring a description of the group's distinctive
Tactics, Techniques, and Procedures (TTP), followed by a list of all known custom, commodity, and publicly available implants used by the group.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|indicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|The Indicators include an assemblage of high-fidelity network indicators of compromise.|

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
  "id": "String (identifier)",
  "kind": "String",
  "title": "String",
  "firstActiveDateTime": "String (timestamp)",
  "aliases": [
    "String"
  ],
  "targets": [
    "String"
  ],
  "sponsorStates": [
    {
      "@odata.type": "microsoft.graph.security.intelligenceProfileSponsorState"
    }
  ],
  "summary": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "description": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "tradecraft": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  }
}
```

