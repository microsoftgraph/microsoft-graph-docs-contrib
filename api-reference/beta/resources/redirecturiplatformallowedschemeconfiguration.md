---
title: "redirectUriPlatformAllowedSchemeConfiguration resource type"
description: "Platform-specific configuration that specifies allowed URI schemes for redirect URIs."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriPlatformAllowedSchemeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Platform-specific configuration that specifies allowed URI schemes for redirect URIs. This configuration applies to a specific platform type (web, SPA, or public client) and is combined with global allowed scheme settings. The `allowedSchemes` property accepts `"*"` as a special value to allow any URI scheme for the platform. Configured for properties defined on the [redirectUriAllowedSchemeConfiguration](../resources/redirecturiallowedschemeconfiguration.md) resource.

**Applies to:** [redirectUriAllowedSchemeConfiguration](redirecturiallowedschemeconfiguration.md) (**web**, **spa**, **publicClient**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| allowedSchemes | String collection | Collection of URI schemes that are allowed for this specific platform. Schemes refer to URI schemes as defined in [RFC 3986 §3.1](https://datatracker.ietf.org/doc/html/rfc3986#section-3.1). The value `"*"` can be used to allow any scheme for this platform. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriPlatformAllowedSchemeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriPlatformAllowedSchemeConfiguration",
  "allowedSchemes": [
    "String"
  ]
}
```

## Related content

- [redirectUriAllowedSchemeConfiguration](redirecturiallowedschemeconfiguration.md)
