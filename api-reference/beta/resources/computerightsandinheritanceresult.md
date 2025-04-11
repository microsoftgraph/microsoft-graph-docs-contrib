---
title: "computeRightsAndInheritanceResult complex type"
description: "Represents the result of computing user-specific rights and label inheritance for content."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# computeRightsAndInheritanceResult complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the combined result of computing user-specific usage rights and the effective inherited sensitivity label for one or more content items. This is the return type of the `computeRightsAndInheritance` action.

## Properties

None. Results are provided via relationships.

## Relationships

| Relationship      | Type                                                                                       | Description                                                                                                                             |
| :---------------- | :----------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------- |
| contentRights     | [labelContentRight](../resources/labelcontentright.md) collection | A collection detailing the computed rights for each piece of content specified in the request, based on its label and the requesting user. |
| inheritedLabel    | [sensitivityLabel](../resources/security-sensitivitylabel.md)    | The sensitivity label determined to be the effective inherited label based on the input labels and context.                           |
| sensitivityLabels | [sensitivityLabel](../resources/security-sensitivitylabel.md) collection | A collection of the sensitivity labels relevant to the computation, potentially filtered by the requested content formats.             |

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.computeRightsAndInheritanceResult",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.computeRightsAndInheritanceResult",
  "contentRights": [ { "@odata.type": "microsoft.graph.labelContentRight" } ],
  "inheritedLabel": { "@odata.type": "microsoft.graph.sensitivityLabel" },
  "sensitivityLabels": [ { "@odata.type": "microsoft.graph.sensitivityLabel" } ]
}
```
