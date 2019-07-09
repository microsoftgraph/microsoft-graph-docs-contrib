---
title: "removeContentFooterAction resource type"
description: "Action specifies the details on the content footer to be removed from the information, if applicable."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# removeContentFooterAction resource type

[!INCLUDE beta-disclaimer]

The applyLabel, applyLabelFromClassification, or removeLabel APIs may return removeContentFooterAction. The action instructs the consuming application to remove the specific UI element that contains the previously-applicable content footer.

## Properties

| Property       | Type              | Description                           |
| :------------- | :---------------- | :------------------------------------ |
| uiElementNames | String collection | The name of the UI element to remove. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.removeContentFooterAction",
  "baseType": "microsoft.informationProtection.informationProtectionAction"
}-->

```json
{
  "uiElementNames": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "removeContentFooterAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->