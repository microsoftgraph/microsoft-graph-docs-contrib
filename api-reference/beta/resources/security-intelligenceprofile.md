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

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List intelligenceProfiles](../api/security-threatintelligence-list-intelprofiles.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get a list of the [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) objects and their properties.|
|[Create intelligenceProfile](../api/security-threatintelligence-post-intelprofiles.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)|Create a new [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.|
|[Get intelligenceProfile](../api/security-intelligenceprofile-get.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)|Read the properties and relationships of a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.|
|[Update intelligenceProfile](../api/security-intelligenceprofile-update.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md)|Update the properties of a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.|
|[Delete intelligenceProfile](../api/security-threatintelligence-delete-intelprofiles.md)|None|Delete a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.|
|[List indicators](../api/security-intelligenceprofile-list-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get the intelligenceProfileIndicator resources from the indicators navigation property.|
|[Add intelligenceProfileIndicator](../api/security-intelligenceprofile-post-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)|Add indicators by posting to the indicators collection.|
|[Remove indicators](../api/security-intelligenceprofile-delete-indicators.md)|None|Remove a [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aliases|String collection|**TODO: Add Description**|
|description|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|**TODO: Add Description**|
|firstActiveDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|kind|microsoft.graph.security.intelligenceProfileKind|**TODO: Add Description**.The possible values are: `actor`, `tool`, `unknownFutureValue`.|
|sponsorStates|[microsoft.graph.security.intelligenceProfileSponsorState](../resources/security-intelligenceprofilesponsorstate.md) collection|**TODO: Add Description**|
|summary|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|**TODO: Add Description**|
|targets|String collection|**TODO: Add Description**|
|title|String|**TODO: Add Description**|
|tradecraft|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|indicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|**TODO: Add Description**|

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

