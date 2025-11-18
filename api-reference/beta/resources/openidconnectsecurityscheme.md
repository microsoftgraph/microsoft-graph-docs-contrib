---
title: "openIdConnectSecurityScheme resource type"
description: "Represents an OpenID Connect security scheme used for authenticating API requests."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# openIdConnectSecurityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an OpenID Connect security scheme used for authenticating API requests. This resource is configured in the **securitySchemes** property of the [agentCardManifest](../resources/agentcardmanifest.md).

Inherits from [securityScheme](../resources/securityscheme.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|
|openIdConnectUrl|String|The URL to the OpenID Connect discovery endpoint, which provides metadata about the OpenID Connect provider's configuration.|
|type|String|The type of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.openIdConnectSecurityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.openIdConnectSecurityScheme",
  "type": "String",
  "description": "String",
  "openIdConnectUrl": "String"
}
```
