---
title: "protectByTemplateAction resource type"
description: "Informs the application that a protection template in Microsoft Purview Information Protection should be applied."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# protectByTemplateAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs the application that a protection template in Microsoft Purview Information Protection should be applied. **protectionByTemplateAction** might be returned by [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md) or [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md) if the resulting label has been configured to apply protection. The consuming application must read the **templateId** from the result and then use a client library, such as the Microsoft Purview Information Protection SDK, to apply protection via Azure Information Protection.


Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property   | Type   | Description                                                                                                  |
| :--------- | :----- | :----------------------------------------------------------------------------------------------------------- |
| templateId | String | The unique identifier for a protection template in Microsoft Purview Information Protection to apply to the content. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.protectByTemplateAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.protectByTemplateAction",
  "templateId": "String"
}
```

