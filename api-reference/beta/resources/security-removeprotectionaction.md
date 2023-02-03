---
title: "removeProtectionAction resource type"
description: "Represents an action to remove protection from the file or information."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# removeProtectionAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to remove protection from the file or information. The [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md), [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md), or [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md) APIs might return the **removeProtectionAction** if protection is to be removed as a result of updating or removing the label. Protection should be removed via a client library, such as the Microsoft Purview Information Protection SDK, only if the calling user has sufficient rights to remove protection.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
None.
## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.removeProtectionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.removeProtectionAction"
}
```

