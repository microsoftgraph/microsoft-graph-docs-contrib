---
title: "accountSidAction resource type"
description: "Represents an automated action that targets an account by security identifier from a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# accountSidAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [automatedAction](../resources/security-automatedaction.md) that targets an account by security identifier (SID) from a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses the configured account SID column from the query output to identify the account.

Inherits from [automatedAction](../resources/security-automatedaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accountSidColumn|String|Name of the hunting-query result column that contains the SID of the targeted account.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.accountSidAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.accountSidAction",
  "accountSidColumn": "String"
}
```