---
title: "protectByTemplateAction resource type"
description: "Informs the application that an Azure Information Protection protection template should be applied."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# protectByTemplateAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs the application that an Azure Information Protection protection template should be applied. **protectionByTemplateAction** may be returned by [evaluateApplication](../api/security-informationprotection-sensitivitylabel-evaluateapplication.md) or [evaluateClassificationResults](../api/security-informationprotection-sensitivitylabel-evaluateclassificationresults.md) if the resulting label has been configured to apply protection. The consuming application must read the templateId from the result and then use a client library, such as the Microsoft Information Protection SDK, to apply protection via Azure Information Protection.


Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property   | Type   | Description                                                                                   |
| :--------- | :----- | :-------------------------------------------------------------------------------------------- |
| templateId | String | The GUID of the Microsoft Information Protection protection template to apply to the content. |

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

