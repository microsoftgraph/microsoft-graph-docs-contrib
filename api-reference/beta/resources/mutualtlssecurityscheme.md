---
title: "mutualTLSSecurityScheme resource type"
description: "Represents a mutual TLS security scheme used for authenticating API requests."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# mutualTLSSecurityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mutual TLS security scheme used for authenticating API requests. This resource is configured in the **securitySchemes** property of the [agentCardManifest](../resources/agentcardmanifest.md).

Inherits from [securityScheme](../resources/securityscheme.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|
|type|String|The type of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mutualTLSSecurityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mutualTLSSecurityScheme",
  "type": "String",
  "description": "String"
}
```
