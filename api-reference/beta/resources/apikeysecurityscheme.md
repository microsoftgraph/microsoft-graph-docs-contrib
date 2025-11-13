---
title: "apiKeySecurityScheme resource type"
description: "Represents an API key security scheme used for authenticating API requests."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# apiKeySecurityScheme resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an API key security scheme used for authenticating API requests. API key authentication is a simple authentication method where a unique key is passed in the request to identify and authenticate the caller. This resource is configured in the **securitySchemes** property of the [agentCardManifest](../resources/agentcardmanifest.md).

Inherits from [securityScheme](../resources/securityscheme.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|
|in|String|The location of the API key. Possible values are: `query`, `header`, or `cookie`.|
|name|String|The name of the API key parameter (for example, `api_key` or `X-API-Key`).|
|type|String|The type of the security scheme. Inherited from [securityScheme](../resources/securityscheme.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.apiKeySecurityScheme"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.apiKeySecurityScheme",
  "type": "String",
  "description": "String",
  "name": "String",
  "in": "String"
}
```
