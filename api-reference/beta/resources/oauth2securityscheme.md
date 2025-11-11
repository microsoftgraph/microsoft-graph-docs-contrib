---
title: "oAuth2SecurityScheme resource type"
description: "Represents an OAuth 2.0 security scheme used for authenticating API requests."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# oAuth2SecurityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an OAuth 2.0 security scheme used for authenticating API requests. This resource is configured in the **securitySchemes** property of the [agentCardManifest](../resources/agentcardmanifest.md).

Inherits from [securityScheme](../resources/securityscheme.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|
|flows|[oAuthFlows](../resources/oauthflows.md)|The OAuth 2.0 flows (grant types) supported by this security scheme, such as authorization code, client credentials, implicit, and password flows.|
|type|String|The type of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuth2SecurityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuth2SecurityScheme",
  "type": "String",
  "description": "String",
  "flows": {
    "@odata.type": "microsoft.graph.oAuthFlows"
  }
}
```
