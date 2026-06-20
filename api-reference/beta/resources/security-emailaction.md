---
title: "emailAction resource type"
description: "Represents an automated action that targets an email message returned by a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# emailAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [automatedAction](../resources/security-automatedaction.md) that targets an email message returned by a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses message and recipient columns from the query output to identify the email message.

Inherits from [automatedAction](../resources/security-automatedaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|networkMessageIdColumn|String|Name of the hunting-query result column that contains the network message ID of the targeted email message.|
|recipientColumn|String|Name of the hunting-query result column that contains the recipient of the targeted email message.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.emailAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.emailAction",
  "networkMessageIdColumn": "String",
  "recipientColumn": "String"
}
```