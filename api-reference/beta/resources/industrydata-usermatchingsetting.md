---
title: "userMatchingSetting resource type"
description: "Represents the rules for matching a user in a roleGroup with a user object from Microsoft Entra ID."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# userMatchingSetting resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rules for matching a user in a [roleGroup](industrydata-rolegroup.md) with a [user](../resources/user.md) object from Microsoft Entra ID.

## Properties

| Property         | Type                                                                                                        | Description                                                                                              |
| :--------------- | :---------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------- |
| matchTarget      | [microsoft.graph.industryData.userMatchTargetReferenceValue](industrydata-usermatchtargetreferencevalue.md) | The `RefUserMatchTarget` for matching a user from the source with a Microsoft Entra user object. |
| priorityOrder    | Int32                                                                                                       | The priority order to apply when a user has multiple `RefRole` codes assigned.                           |
| sourceIdentifier | [microsoft.graph.industryData.identifierTypeReferenceValue](industrydata-identifiertypereferencevalue.md)   | The `RefIdentifierType` that uniquely identifies a user in the source data.                              |

## Relationships

| Relationship | Type                                                                | Description                                     |
| :----------- | :------------------------------------------------------------------ | :---------------------------------------------- |
| roleGroup    | [microsoft.graph.industryData.roleGroup](industrydata-rolegroup.md) | The **roleGroup** that these settings apply to. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.userMatchingSetting",
  "matchTarget": {
    "@odata.type": "microsoft.graph.industryData.userMatchTargetReferenceValue"
  },
  "priorityOrder": "Int32",
  "sourceIdentifier": {
    "@odata.type": "microsoft.graph.industryData.identifierTypeReferenceValue"
  }
}
```
