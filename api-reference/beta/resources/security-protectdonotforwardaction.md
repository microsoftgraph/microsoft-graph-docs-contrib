---
title: "protectDoNotForwardAction resource type"
description: "Informs the application to apply Don't Forward protection."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectDoNotForwardAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs the application to apply **Do Not Forward** protection. **protectionDoNotForwardAction** might be returned by [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md) or [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md) if the resulting label has been configured to apply [Don't Forward protection](/azure/information-protection/configure-usage-rights#do-not-forward-option-for-emails). The consuming application must use a client library to apply protection via Azure Information Protection.


Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
None. 

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.protectDoNotForwardAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.protectDoNotForwardAction"
}
```

