---
title: "userCreationOptions resource type"
description: "The different management choices for the users to be provisioned"
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# userCreationOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different management choices for the users to be provisioned

## Properties

| Property       | Type                                                                                                        | Description                                                      |
| :------------- | :---------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------- |
| configurations | [microsoft.graph.industryData.userConfiguration](../resources/industrydata-userconfiguration.md) collection | The different management choices for the users to be provisioned |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.userCreationOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.userCreationOptions",
  "configurations": [
    {
      "@odata.type": "microsoft.graph.industryData.userConfiguration"
    }
  ]
}
```
