---
title: "protectDoNotForwardAction resource type (deprecated)"
description: "Informs the application to apply Don't Forward protection. Deprecated."
ms.localizationpriority: medium
author: "tommoser"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# protectDoNotForwardAction resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [informationprotection-deprecate](../../includes/informationprotection-deprecate.md)]

Informs the application to apply Don't Forward protection. **protectionDoNotForwardAction** may be returned by [evaluateApplication](../api/informationprotectionlabel-evaluateapplication.md) or [evaluateClassificationResults](../api/informationprotectionlabel-evaluateclassificationresults.md) if the resulting label has been configured to apply [Don't Forward protection](/azure/information-protection/configure-usage-rights#do-not-forward-option-for-emails). The consuming application must use a client library to apply protection via Azure Information Protection.

## Properties

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.protectDoNotForwardAction",
  "baseType": "microsoft.graph.informationProtectionAction"
}-->

```json
{
  
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "protectDoNotForwardAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
