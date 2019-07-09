---
title: "justifyAction resource type"
description: "JustifyAction indicates that justification is required for the specified operation."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# justifyAction resource type

[!INCLUDE beta-disclaimer]

The applyLabel, applyLabelFromClassification, or removeLabel APIs may return justifyACtion. The action instructs the consuming application that justification is required for the specific operation. Justification is provided via [labelingOptions](../resources/labelingoptions.md). The previous call should be repeated, but with the downgradeJustification property of `labelingOptions` set with a justification message, provided via user input or application logic.

## Properties

None

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "justifyAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->