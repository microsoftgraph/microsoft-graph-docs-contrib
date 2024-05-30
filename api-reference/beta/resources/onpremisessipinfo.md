---
title: "onPremisesSipInfo resource type"
description: "onPremisesSipInfo resource type"
author: "CecilyK"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: resourcePageType
---

# onPremisesSipInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This complex type contains all onPremises SIP information related to the user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSipEnabled|Boolean|Indicates whether the user is currently enabled for on-premises Skype for Business.|
|sipDeploymentLocation|String|Indicates a fully qualified DNS name of the Microsoft Online Communications Server deployment.|
|sipPrimaryAddress|String|Serves as a unique identifier for each user on the on-premises Skype for Business.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesSipInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesSipInfo",
  "isSipEnabled": "Boolean",
  "sipDeploymentLocation": "String",
  "sipPrimaryAddress": "String"
}
```

