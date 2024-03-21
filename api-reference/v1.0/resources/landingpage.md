---
title: "landingPage resource type"
description: "Represents an attack simulation landing page."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# landingPage resource type

Namespace: microsoft.graph

Represents an attack simulation landing page.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List landingPages](../api/attacksimulationroot-list-landingpage.md)|[landingPage](../resources/landingpage.md) collection|Get a list of the [landingPage](../resources/landingpage.md) objects and their properties.|
|[Get landingPage](../api/landingpage-get.md)|[landingPage](../resources/landingpage.md)|Get a [landingPage](../resources/landingpage.md) associated with an attack simulation campaign for a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the landing page.|
|createdDateTime|DateTimeOffset|Date and time when the landing page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Description of the landing page as defined by the user.|
|displayName|String|The display name of the landing page.|
|id|String|Unique identifier for the **landingPage** object. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Email identity of the user who last modified the landing page.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the landing page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|locale|String|Content locale.|
|source|[simulationContentSource](../resources/simulation.md#simulationcontentsource-values)|The source of the content. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|[simulationContentStatus](../resources/simulation.md#simulationcontentstatus-values)|The status of the simulation. Possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|supportedLocales|String collection|Supported locales.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|details|[landingPageDetail](../resources/landingpagedetail.md) collection|The detail information for a landing page associated with a simulation during its creation.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.landingPage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.landingPage",
  "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "lastModifiedDateTime": "String (timestamp)",
  "locale": "String",
  "source": "String",
  "status": "String",
  "supportedLocales": ["String"]
}
```
