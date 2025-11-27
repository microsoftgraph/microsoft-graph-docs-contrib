---
title: "httpAuthSecurityScheme resource type"
description: "Represents an HTTP authentication security scheme used for authenticating API requests."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# httpAuthSecurityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an HTTP authentication security scheme used for authenticating API requests. HTTP authentication allows various authentication methods to be used via the HTTP Authorization header, such as Bearer tokens, Basic authentication, and other custom schemes. This resource is configured in the **securitySchemes** property of the [agentCardManifest](../resources/agentcardmanifest.md).

Inherits from [securityScheme](../resources/securityscheme.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bearerFormat|String|A hint about the format of the bearer token when using Bearer authentication. For example, `JWT` for JSON Web Tokens.|
|description|String|A description of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|
|scheme|String|The name of the HTTP authentication scheme to be used in the Authorization header. Common values include `bearer`, `basic`, `digest`, or custom scheme names.|
|type|String|The type of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.httpAuthSecurityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.httpAuthSecurityScheme",
  "type": "String",
  "description": "String",
  "scheme": "String",
  "bearerFormat": "String"
}
```
