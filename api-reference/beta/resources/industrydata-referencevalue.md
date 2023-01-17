---
title: "referenceValue resource type"
description: "An abstract type that represents a pointer to an entry in the referenceDefinitions collection."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# referenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a pointer to an entry in the [referenceDefinition](industrydata-referencedefinition.md) collection with a specific reference type.

The **referenceValue** is designed to simplify the selection of the **referenceDefinition** and to reduce the developer configuration by only requiring the **code** value. The type of reference value is defined by the **referenceValue** type, removing ambiguity about which **referenceDefinition** is expected for a particular property.

Base type of [identifierTypeReferenceValue](industrydata-identifiertypereferencevalue.md), [roleReferenceValue](industrydata-rolereferencevalue.md), [userMatchTargetReferenceValue](industrydata-usermatchtargetreferencevalue.md), and [yearReferenceValue](industrydata-yearreferencevalue.md).

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
| [identifierTypeReferenceValue](industrydata-identifiertypereferencevalue.md)   | `RefIdentifierType`  |
| [roleReferenceValue](industrydata-rolereferencevalue.md)                       | `RefRole`            |
| [userMatchTargetReferenceValue](industrydata-usermatchtargetreferencevalue.md) | `RefUserMatchTarget` |
| [yearReferenceValue](industrydata-yearreferencevalue.md)                       | `RefAcademicYear`    |

## Properties

| Property | Type   | Description                                        |
| :------- | :----- | :------------------------------------------------- |
| code     | String | The code of the desired **referenceDefinition** entry. |

## Relationships

| Relationship | Type                                                                    | Description                                        |
| :----------- | :---------------------------------------------------------------------- | :------------------------------------------------- |
| value        | [referenceDefinition](industrydata-referencedefinition.md) | Reference to the bound **referenceDefinition** entity. |

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
