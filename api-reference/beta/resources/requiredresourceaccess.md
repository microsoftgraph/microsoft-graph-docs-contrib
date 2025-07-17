---
title: "requiredResourceAccess resource type"
description: "Specifies the set of OAuth 2.0 permission scopes and app roles."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "psignoret"
ms.date: 03/21/2024
---

# requiredResourceAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the set of OAuth 2.0 permission scopes and app roles under the specified resource that an application requires access to. The [application](application.md) may request the specified OAuth 2.0 permission scopes or app roles through the **requiredResourceAccess** property, which is a collection of [requiredResourceAccess](requiredresourceaccess.md) objects.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|resourceAccess|[resourceAccess](resourceaccess.md) collection|The list of OAuth2.0 permission scopes and app roles that the application requires from the specified resource.|
|resourceAppId|String|The unique identifier for the resource that the application requires access to. This should be equal to the **appId** declared on the target resource application.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.requiredResourceAccess"
}-->

```json
{
  "resourceAccess": [
    {
      "@odata.type": "microsoft.graph.resourceAccess"
    }
  ],
  "resourceAppId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "requiredResourceAccess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


