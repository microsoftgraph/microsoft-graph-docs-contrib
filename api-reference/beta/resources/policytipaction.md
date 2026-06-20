---
title: "policyTipAction resource type"
description: "When a Data Loss Prevention (DLP) policy is triggered, guidance to display to the user is included as a policy tip."
author: "Vishnu369"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyTipAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When a Data Loss Prevention (DLP) policy is triggered, guidance to display to the user is included as a policy tip. The **policyTipAction** is returned in the processContent and protectionScopes responses when a DLP policy with a notify-user action matches.

Inherits from [dlpActionInfo](../resources/dlpactioninfo.md).

## Properties

| Property | Type | Description |
| :--- | :--- | :--- |
| action | microsoft.graph.security.dlpAction | The type of DLP action. Inherited from [dlpActionInfo](../resources/dlpactioninfo.md). |
| policyTip | String | The text of the policy tip that explains what triggered the DLP policy. Developers can display this information to users in the app. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyTipAction",
  "baseType": "microsoft.graph.dlpActionInfo",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyTipAction",
  "action": "policyTip",
  "policyTip": "String"
}
```
