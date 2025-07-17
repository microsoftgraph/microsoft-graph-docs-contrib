---
title: "protectAdhocAction resource type"
description: "Informs the application that ad hoc protection should be applied."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# protectAdhocAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs the application that ad hoc protection should be applied. The **protectAdhocAction** informs applications that the label should apply ad hoc protection. Ad hoc protection is defined at runtime by the user or application. The consuming application must use the Microsoft Purview Information Protection SDK to locally apply the protection to the file or data.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.protectAdhocAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.protectAdhocAction"
}
```

