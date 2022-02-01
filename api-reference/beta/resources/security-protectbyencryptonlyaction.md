---
title: "protectByEncryptOnlyAction resource type"
description: "Informs the application that an Azure Information Protection Encrypt-only protection should be applied."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# protectByEncryptOnlyAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs the application that an Azure Information Protection encrypt-only protection should be applied. **protectByEncryptOnlyAction** may be returned by [evaluateApplication](../api/security-informationprotection-sensitivitylabel-evaluateapplication.md) or [evaluateClassificationResults](../api/security-informationprotection-sensitivitylabel-evaluateclassificationresults.md) if the resulting label has been configured to apply protection. The consuming application must use a client library, such as the Microsoft Information Protection SDK, to apply protection via Microsoft Information Protection.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property   | Type   | Description                               |
| :--------- | :----- | :---------------------------------------- |
| templateId | String | Returns the well-known encrypt-only GUID. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.protectByEncryptOnlyAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.protectByEncryptOnlyAction",
  "templateId": "String"
}
```

