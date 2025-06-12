---
title: "linkableIdentifiers resource type"
description: "A set of linkable claims to link together all the authentication artifacts issued from a single interactive root authentication."
author: "vimrang"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# linkableIdentifiers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Describes a set of token claims used to link together all the authentication artifacts issued from a single interactive root authentication.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|Represents a unique identifier for the device from which a user is interacting with an application.|
|sessionId|String|Represents a unique identifier for an entire session and is generated when a user does interactive authentication. This ID helps link all authentication artifacts issued from a single root authentication.|
|tokenDetails|[tokenDetails](../resources/tokendetails.md)|Property that represents an access token's unique identifier and the time when the token was issued.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.linkableIdentifiers"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkableIdentifiers",
  "sessionId": "String",
  "deviceId": "String",
  "tokenDetails": {
    "@odata.type": "microsoft.graph.tokenDetails"
  }
}
```