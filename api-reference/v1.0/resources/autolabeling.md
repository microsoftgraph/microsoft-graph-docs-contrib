---
title: "autoLabeling resource type"
description: "Specifies the configuration for automatically applying a sensitivity label based on detected sensitive information types."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# autoLabeling resource type

Namespace: microsoft.graph

Specifies the configuration for automatically applying a sensitivity label based on detected sensitive information types. 

## Properties

| Property         | Type              | Description                                                                                                    |
| :--------------- | :---------------- | :------------------------------------------------------------------------------------------------------------- |
| message          | String            | The message displayed to the user when the label is applied automatically.                                     |
| sensitiveTypeIds | String collection | The list of sensitive information type (SIT) IDs that trigger the automatic application of this label.         |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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