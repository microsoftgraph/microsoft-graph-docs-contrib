---
title: "redirectUriWildcardExcludeFormats resource type"
description: "Configuration object that specifies exceptions to wildcard restrictions in redirect URIs."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriWildcardExcludeFormats resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that specifies exceptions to wildcard restrictions in redirect URIs, allowing specific trusted scenarios while maintaining overall security. Configured on the **excludeFormats** property of [redirectUriWildcardConfiguration](../resources/redirecturiwildcardconfiguration.md) resource.

**Applies to:** [redirectUriWildcardConfiguration](redirecturiwildcardconfiguration.md) (**excludeFormats**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| excludeWildcardsInPath | Boolean | When `true`, blocks the use of wildcards in the path portion of redirect URIs. When `false`, allows wildcards in paths. |
| excludeWildcardsInPathWithDomains | String collection | Collection of domain names where wildcards in the path portion of redirect URIs are blocked. Accepts only valid host names (no wildcards) as defined in [RFC 3986 §3.2.2](https://datatracker.ietf.org/doc/html/rfc3986#section-3.2.2). For example, `login.microsoft.com` or `contoso.com`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriWildcardExcludeFormats"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriWildcardExcludeFormats",
  "excludeWildcardsInPath": "Boolean",
  "excludeWildcardsInPathWithDomains": [
    "String"
  ]
}
```

## Related content

- [redirectUriWildcardConfiguration](redirecturiwildcardconfiguration.md)
