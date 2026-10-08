---
title: "redirectUriPlatformAllowedDomainConfiguration resource type"
description: "Platform-specific configuration that specifies allowed domains for redirect URIs."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriPlatformAllowedDomainConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Platform-specific configuration that specifies allowed domains for redirect URIs. This configuration applies to a specific platform type (web, SPA, or public client) and is combined with global allowed domain settings. Configured for properties defined on the [redirectUriAllowedDomainConfiguration](../resources/redirecturialloweddomainconfiguration.md) resource.

**Applies to:** [redirectUriAllowedDomainConfiguration](redirecturialloweddomainconfiguration.md) (**web**, **spa**, **publicClient**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| allowedDomains | String collection | Collection of domain names that are allowed for this specific platform. Domain validation follows [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) (URI syntax, section 3.2.2 for the host component). Domain matching is case-insensitive and exact; wildcards are not supported. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriPlatformAllowedDomainConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriPlatformAllowedDomainConfiguration",
  "allowedDomains": [
    "String"
  ]
}
```

## Related content

- [redirectUriAllowedDomainConfiguration](redirecturialloweddomainconfiguration.md)
