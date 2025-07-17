---
title: "sourceSystemDefinition resource type"
description: "Represents an external data source in the real world."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# sourceSystemDefinition resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external data source in the real world. The data that is ingested is associated to a source system to identify the record owner.

## Methods

| Method                                                                                | Return type                                                                                              | Description                                                                                                         |
| :------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------ |
| [Create](../api/industrydata-sourcesystemdefinition-post.md)   | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)            | Create a new [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.                               |
| [List](../api/industrydata-sourcesystemdefinition-list.md)    | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) collection | Get a list of the [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) objects and their properties.    |
| [Get](../api/industrydata-sourcesystemdefinition-get.md)       | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)            | Read the properties and relationships of a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object. |
| [Update](../api/industrydata-sourcesystemdefinition-update.md) | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)            | Update the properties of a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.                 |
| [Delete](../api/industrydata-sourcesystemdefinition-delete.md) | None                                                                                                     | Delete a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.                                   |

## Properties

| Property             | Type                                                                                               | Description                                                                                        |
| :------------------- | :------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------- |
| displayName          | String                                                                                             | The name of the source system. Maximum supported length is 100 characters.                         |
| userMatchingSettings | [microsoft.graph.industryData.userMatchingSetting](industrydata-usermatchingsetting.md) collection | A collection of user matching settings by [roleGroup](industrydata-rolegroup.md).                  |
| vendor               | String                                                                                             | The name of the vendor who supplies the source system. Maximum supported length is 100 characters. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.sourceSystemDefinition",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.sourceSystemDefinition",
  "displayName": "String",
  "userMatchingSettings": [
    {
      "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
    }
  ],
  "vendor": "String"
}
```
