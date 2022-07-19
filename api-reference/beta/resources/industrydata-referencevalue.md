---
title: "referenceValue resource type"
description: "Represents a pointer to an entry in the referenceDefinitions collection."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# referenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pointer to a [referenceDefinition](../resources/industrydata-referencedefinition.md) with a specific `referenceType`.

This is an abstract type.

The **industryDataReferenceValue** is designed to simplify selecting **referenceDefinition** and to reduce developer configuration by only requiring the `code` value. The type of reference value is defined by the **industryDataReferenceValue** type, eliminating potential confusing as to which **referenceDefinition** a given property is expecting.

#### Example Usage

The `userMatchingSettings.sourceIdentifier` property takes a `industryDataIdentifierTypeReferenceValue` type. This is a `industryDataReferenceValue` type bound to a `RefIdentifierType` reference definition.

Selecting the desired `RefIdentifierType` can be done either by providing a `code` value

```json
"sourceIdentifier": {
    "code": "username"
},
```

or binding the `industryDataReferenceDefinition` entity directly.

```json
"sourceIdentifier": {
    "value@odata.bind": "external/industryData/referenceDefinitions/RefIdentifierType-username"
},
```

| Type                                                                                        | ReferenceType        |
| ------------------------------------------------------------------------------------------- | -------------------- |
| [identifierTypeReferenceValue](../resources/industrydata-identifiertypereferencevalue.md)   | `RefIdentifierType`  |
| [roleReferenceValue](../resources/industrydata-rolereferencevalue.md)                       | `RefRole`            |
| [userMatchTargetReferenceValue](../resources/industrydata-usermatchtargetreferencevalue.md) | `RefUserMatchTarget` |
| [yearReferenceValue](../resources/industrydata-yearreferencevalue.md)                       | `RefAcademicYear`    |

## Properties

| Property | Type   | Description                                        |
| :------- | :----- | :------------------------------------------------- |
| code     | String | The code of the desired referenceDefinition entry. |

## Relationships

| Relationship | Type                                                                    | Description                                        |
| :----------- | :---------------------------------------------------------------------- | :------------------------------------------------- |
| value        | [referenceDefinition](../resources/industrydata-referencedefinition.md) | Reference to the bound referenceDefinition entity. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.referenceValue"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.referenceValue",
  "code": "String"
}
```
