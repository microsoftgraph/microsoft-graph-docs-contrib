---
title: "agentCardSignature resource type"
description: "AgentCardSignature represents a JWS signature of an AgentCard. This follows the JSON format of an RFC 7515 JSON Web Signature (JWS)."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentCardSignature resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a JWS signature of an agent card, as defined in the [agentInstance](../resources/agentinstance.md) object. This follows the JSON format of an RFC 7515 JSON Web Signature (JWS).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|header|[jwsHeader](../resources/jwsheader.md)| The unprotected JWS header values.|
|protected|String|The protected JWS header for the signature. This is a Base64url-encoded JSON object, as per RFC 7515.|
|signature|String|The computed signature, Base64url-encoded.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentCardSignature"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCardSignature",
  "protected": "String",
  "signature": "String",
  "header": {
    "@odata.type": "microsoft.graph.jwsHeader"
  }
}
```

