---
title: "referenceDefinition resource type"
description: "Represents an enumerated reference value."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# referenceDefinition resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an enumerated reference value. Each supported industry domain receives a distinct collection of default values and customers can further customize them by overriding default values or adding new values to the tenant. The **referenceDefinition** objects are used throughout the system, both for configuration and validating data during transformation.

Each **referenceDefinition** uses a composite identifier of `{referenceType}-{code}`. This provides a more natural developer experience as the vast majority of code values are defined by a standard body, which allows developers in specific industry domains to better recognize the format.

The following are examples of types:

- **refRole**: Used when associating and validated during import
- **refOrgType**: Used when associating and validated during import
- **userMatchTarget**: Only used for configuration

## Methods

| Method                                                                           | Return type                                                                                          | Description                                                                                                                            |
| :------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------- |
| [List](../api/industrydata-referencedefinition-list.md)     | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) collection   | Get a list of the **referenceDefinition** objects and their properties.                             |
| [Get](../api/industrydata-referencedefinition-get.md)        | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md)              | Read the properties and relationships of a **referenceDefinition** object.                          |
| [Create](../api/industrydata-referencedefinition-post.md)   | [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) | Create a new **referenceDefinition** object.              |
| [Update](../api/industrydata-referencedefinition-update.md)  | [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) | Update the properties of a **referenceDefinition** object.|
| [Delete](../api/industrydata-referencedefinition-delete.md) | None                                                                                                 | Delete a **referenceDefinition** object.                  |

## Properties

| Property             | Type           | Description                                                                                                                                                                                                                                   |
| :------------------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| code                 | String         | The code value for the definition that must be unique within the **referenceType**.                                                                                                                                                           |
| createdDateTime      | DateTimeOffset | The date and time when the definition was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.               |
| displayName          | String         | A human-readable representation of the reference code value for display in a user interface.                                                                                                                                                                    |
| isDisabled           | Boolean        | Indicates whether the definition is disabled.                                                                                                                                                                                           |
| lastModifiedDateTime | DateTimeOffset | The date and time when the definition was most recently changed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| referenceType        | String         | The categorical type for a collection of enumerated values.                                                                                                                                                                                   |
| sortIndex            | Int32          | The index that specifies the order in which to present the definition to the user. Must be unique within the referenceType.                                                                                                                                                  |
| source               | String         | The standards body or organization source which defined the code.                                                                                                                                                                             |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.referenceDefinition",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.referenceDefinition",
  "code": "String",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "isDisabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "referenceType": "String",
  "sortIndex": "Int32",
  "source": "String"
}
```
