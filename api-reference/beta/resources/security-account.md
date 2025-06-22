---
title: "account resource type"
description: "Account field"
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# account resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the account.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|microsoft.graph.security.action collection|**TODO: Add Description**|
|identifier|String|**TODO: Add Description**|
|identityProvider|microsoft.graph.security.identityProvider|**TODO: Add Description**. The possible values are: `entraID`, `activeDirectory`, `okta`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.account"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.account",
  "identifier": "String",
  "identityProvider": "String",
  "actions": [
    "String"
  ]
}
