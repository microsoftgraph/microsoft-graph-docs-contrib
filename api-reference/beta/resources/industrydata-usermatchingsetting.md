---
title: "userMatchingSetting resource type"
description: "Represents the setting the matching rules for a roleGroup."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# userMatchingSetting resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the setting the matching rules for a roleGroup.

## Properties

| Property         | Type                                                                                                                     | Description                                                                         |
| :--------------- | :----------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------- |
| matchTarget      | [microsoft.graph.industryData.userMatchTargetReferenceValue](../resources/industrydata-usermatchtargetreferencevalue.md) | The RefUserMatchTarget for matching a User from the Source with an AAD User object. |
| priorityOrder    | Int32                                                                                                                    | The priority order to apply when a User has multiple RefRole codes assigned.        |
| sourceIdentifier | [microsoft.graph.industryData.identifierTypeReferenceValue](../resources/industrydata-identifiertypereferencevalue.md)   | The RefIdentifierType for uniquely identifying a User in the Source data.           |

## Relationships

| Relationship | Type                                                | Description                            |
| :----------- | :-------------------------------------------------- | :------------------------------------- |
| roleGroup    | [roleGroup](../resources/industrydata-rolegroup.md) | The roleGroup these settings apply to. |

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
  "priorityOrder": "Integer",
  "sourceIdentifier": {
    "@odata.type": "microsoft.graph.industryData.identifierTypeReferenceValue"
  }
}
```
