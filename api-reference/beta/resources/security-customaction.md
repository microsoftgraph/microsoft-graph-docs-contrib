---
title: "customAction resource type"
description: "Represents any custom actions that a label may provide, if configured by the administrator."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# customAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents any custom actions that a label may provide, if configured by the administrator. Custom actions might be defined as part of an [sensitivityLabel](security-sensitivitylabel.md) via the Microsoft 365 Security and Compliance Center module for PowerShell. The consuming application must understand the actions.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property   | Type                                       | Description                                          |
| :--------- | :----------------------------------------- | :--------------------------------------------------- |
| name       | String                                     | Name of the custom action.                           |
| properties | [keyValuePair](keyvaluepair.md) collection | Properties, in key-value pair format, of the action. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.customAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.customAction",
  "name": "String",
  "properties": [
    {
      "@odata.type": "microsoft.graph.security.keyValuePair"
    }
  ]
}
```

