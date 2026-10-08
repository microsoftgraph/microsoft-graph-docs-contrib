---
title: "errorSettings resource type"
description: "Represents settings that control enforcement behavior when policy evaluation can't be completed."
author: "zhengnlu"
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# errorSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings that control enforcement behavior when policy evaluation can't be completed. This type is used by the **errorSettings** property of [policyConfiguration](../resources/policyconfiguration.md).

## Methods

None.

## Properties

| Property | Type | Description |
| :--- | :--- | :--- |
| errorAction | [errorActions](../resources/enums.md#erroractions-values) | The action that the enforcement plane takes when policy evaluation can't be completed. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `none`, `audit`, `block`, `unknownFutureValue`. Don't combine `none` with another value. |
| isEnabled | Boolean | Indicates whether Secure by Default is enabled for the protection scope. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.errorSettings"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.errorSettings",
  "errorAction": "String",
  "isEnabled": "Boolean"
}
```
