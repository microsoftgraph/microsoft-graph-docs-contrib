---
title: "autoLabeling complex type"
description: "Specifies the configuration for automatically applying a sensitivity label based on detected sensitive information types."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# autoLabeling complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the settings for automatically applying a sensitivity label when specific sensitive information types are detected. This is part of the configuration of a [sensitivityLabel](../resources/sensitivitylabel.md).

## Properties

| Property         | Type              | Description                                                                                                    |
| :--------------- | :---------------- | :------------------------------------------------------------------------------------------------------------- |
| condition        | String            | The specific condition or rule expression used for auto-labeling. *Note: Hidden in CSDL.*                       |
| message          | String            | The message displayed to the user when the label is applied automatically.                                     |
| sensitiveTypeIds | String collection | The list of sensitive information type (SIT) IDs that trigger the automatic application of this label.         |

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.autoLabeling",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.autoLabeling",
  "sensitiveTypeIds": [
    "String"
  ],
  "message": "String",
  "condition": "String"
}
```