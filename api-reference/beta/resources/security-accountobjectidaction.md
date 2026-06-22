---
title: "accountObjectIdAction resource type"
description: "Represents an automated action that targets an account by Microsoft Entra object ID from a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# accountObjectIdAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [automatedAction](../resources/security-automatedaction.md) that targets an account by Microsoft Entra object ID from a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses the configured account object ID column from the query output to identify the account.

Inherits from [automatedAction](../resources/security-automatedaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accountObjectIdColumn|String|Name of the hunting-query result column that contains the Microsoft Entra object ID of the targeted account.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.accountObjectIdAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.accountObjectIdAction",
  "accountObjectIdColumn": "String"
}
```