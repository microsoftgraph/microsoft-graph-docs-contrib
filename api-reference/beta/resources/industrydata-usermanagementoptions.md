---
title: "userManagementOptions resource type"
description: "The different configurations choices for the users to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# userManagementOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different configurations choices for the users to be provisioned.

## Properties

| Property             | Type                                                                                                     | Description                                                      |
| :------------------- | :------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------- |
| additionalAttributes | microsoft.graph.industryData.additionalUserAttributes collection                                         | The different attribute choices for the users to be provisioned.  |
| additionalOptions    | [microsoft.graph.industryData.additionalUserOptions](../resources/industrydata-additionaluseroptions.md) | The different management choices for the users to be provisioned |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.userManagementOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.userManagementOptions",
  "additionalAttributes": ["String"],
  "additionalOptions": {
    "@odata.type": "microsoft.graph.industryData.additionalUserOptions"
  }
}
```
