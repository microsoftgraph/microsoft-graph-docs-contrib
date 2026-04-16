---
title: "spaApplication resource type"
description: "Specifies settings for a single-page application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "Jackson-Woods"
ms.date: 04/16/2026
---

# spaApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies settings for a single-page application.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| enabledResponseModes | [enabledResponseModes](enabledresponsemodes.md) | Specifies the HTTP response modes that are supported for token acquisition. The default value is `all`. |
| redirectUris | String collection | Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.spaApplication"
}-->

```json
{
  "enabledResponseModes": "String",
  "redirectUris": ["String"]
}
```
