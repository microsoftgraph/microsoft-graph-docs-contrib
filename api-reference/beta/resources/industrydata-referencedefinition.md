---
title: "referenceDefinition resource type"
description: "Represents an enumerated reference value."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# referenceDefinition resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an enumerated reference value. Each supported industry domains receives a distinct collection of default and customers can further customize them by overriding default values or adding new values to the tenant. The **referenceDefinitions** are used extensively throughout the system, both for configuration and validating data during transformation.

Each **referenceDefinition** uses a composite identifier of `{referenceType}-{code}`. This provides a more natural developer experience as the vast majority of code values are defined by a standards body, and will be recognizable to developers in that industry domain.

The following are examples of types:

- **refRole**: Used when associating and validated during import
- **refOrgType**: Used when associating and validated during import
- **userMatchTarget**: Only used for configuration

## Methods

| Method                                                                                         | Return type                                                                                                     | Description                                                                                                                |
| :--------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| [List referenceDefinitions](../api/industrydata-industrydataroot-list-referencedefinitions.md) | [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) collection | Get a list of the [referenceDefinition](../resources/industrydata-referencedefinition.md) objects and their properties.    |
| [Get referenceDefinition](../api/industrydata-referencedefinition-get.md)                      | [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md)            | Read the properties and relationships of a [referenceDefinition](../resources/industrydata-referencedefinition.md) object. |

## Properties

| Property             | Type           | Description                                                                              |
| :------------------- | :------------- | :--------------------------------------------------------------------------------------- |
| code                 | String         | The code value for the definition that must be unique within the **referenceType**.                  |
| createdDateTime      | DateTimeOffset | The date and time when the definition was created.                                                         |
| isDisabled           | Boolean        | Indicates whether the definition has been disabled.                                      |
| lastModifiedDateTime | DateTimeOffset | The date and time when the definition was most recently changed.                                           |
| referenceType        | String         | The categorical type for a collection of enumerated values.                                 |
| sortIndex            | Int32          | The ordering index to present the definitions within a type consistently in user interfaces. |
| source               | String         | The standards body or organization source which defined the code.                        |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
  "isDisabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "referenceType": "String",
  "sortIndex": "Int32",
  "source": "String"
}
```
