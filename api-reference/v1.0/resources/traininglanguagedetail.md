---
title: "trainingLanguageDetail resource type"
description: "Represents an attack simulation training language detail."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# trainingLanguageDetail resource type

Namespace: microsoft.graph

Represents language information for an attack simulation training.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get trainingLanguageDetail](../api/traininglanguagedetail-get.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md)|Get the [language details](../resources/traininglanguagedetail.md) about an attack simulation training for a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|String|Language specific content for the training.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the language details.|
|createdDateTime|DateTimeOffset|Date and time when the language details were created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Description as defined by the user.|
|displayName|String|Display name as defined by the user.|
|id|String|Unique identifier of the **trainingLanguageDetail** object. Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|Indicates whether the training has a default language.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who last modified the details.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the **trainingLanguageDetail** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|locale|String|Content locale for the training detail.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trainingLanguageDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingLanguageDetail",
  "content": "String",
  "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isDefaultLangauge": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "lastModifiedDateTime": "String (timestamp)",
  "locale": "String"
}
```
