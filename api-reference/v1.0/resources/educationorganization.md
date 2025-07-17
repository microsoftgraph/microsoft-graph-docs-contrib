---
title: "educationOrganization resource type"
description: "Abstract entity used to model the commonality between different organization types within the education sector."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# educationOrganization resource type

Namespace: microsoft.graph

Abstract entity used to model the commonality between different organization types within the education sector.

Inherits from [entity](../resources/entity.md).

## Properties

| Property             | Type                    | Description                                                                            |
| :------------------- | :---------------------- | :------------------------------------------------------------------------------------- |
| description          | String                  | Organization description.                                                              |
| displayName          | String                  | Organization display name.                                                             |
| externalSource       | educationExternalSource | Source where this organization was created from. Possible values are: `sis`, `manual`. |
| externalSourceDetail | String                  | The name of the external source this resource was generated from.                     |
| id                   | String                  | Object identifier. Inherited from [entity](../resources/entity.md)                     |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationOrganization",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationOrganization",
  "displayName": "String",
  "description": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "id": "String (identifier)"
}
```
