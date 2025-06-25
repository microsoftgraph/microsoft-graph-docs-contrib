---
title: "thirdPartyTokenDetails resource type"
description: "Represents details about third-party tokens used in network transactions."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# thirdPartyTokenDetails resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about third-party tokens used in network access transactions.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|Time the token will expire.|
|issuedAtDateTime|DateTimeOffset|Time the token was issued at.|
|uniqueTokenIdentifier|String|Unique token identifier.|
|validFromDateTime|DateTimeOffset|Time the token is valid from.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.thirdPartyTokenDetails",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.thirdPartyTokenDetails",
  "uniqueTokenIdentifier": "String",
  "issuedAtDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "validFromDateTime": "String (timestamp)"
}
```