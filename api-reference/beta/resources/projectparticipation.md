---
title: "projectParticipation resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# projectParticipation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get projectParticipation](../api/projectparticipation-get.md) | [projectParticipation](projectparticipation.md) | Read properties and relationships of projectParticipation object. |
| [Update](../api/projectparticipation-update.md) | [projectParticipation](projectparticipation.md) | Update projectParticipation object. |
| [Delete](../api/projectparticipation-delete.md) | None | Delete projectParticipation object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection||
|client|[companyDetail](companydetail.md)||
|colleagues|[relatedPerson](relatedperson.md) collection||
|detail|[positionDetail](positiondetail.md)||
|displayName|String||
|sponsors|[relatedPerson](relatedperson.md) collection||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.projectParticipation",
  "baseType": ""
}-->

```json
{
  "categories": ["String"],
  "client": {"@odata.type": "microsoft.graph.companyDetail"},
  "colleagues": [{"@odata.type": "microsoft.graph.relatedPerson"}],
  "detail": {"@odata.type": "microsoft.graph.positionDetail"},
  "displayName": "String",
  "sponsors": [{"@odata.type": "microsoft.graph.relatedPerson"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "projectParticipation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->