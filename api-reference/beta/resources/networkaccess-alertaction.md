---
title: "alertAction resource type"
description: "Represents a suggested action for admins to take for a given Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# alertAction resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a suggested action for admins to take for a given Global Secure Access [alert](../resources/networkaccess-alert.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionLink|String|A link to more information or to perform the action (if applicable).|
|actionText|String|Text describing the action. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.alertAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.alertAction",
  "actionText": "String",
  "actionLink": "String"
}
```
