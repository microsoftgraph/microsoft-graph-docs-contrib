---
title: "redirectUriPlatformBlockedSchemeConfiguration resource type"
description: "Platform-specific configuration that specifies blocked URI schemes for redirect URIs."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriPlatformBlockedSchemeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Platform-specific configuration that specifies blocked URI schemes for redirect URIs. This configuration applies to a specific platform type (web, SPA, or public client) and is combined with global blocked scheme settings. Configured for properties defined on the [redirectUriBlockedSchemeConfiguration](../resources/redirecturiblockedschemeconfiguration.md) resource.

**Applies to:** [redirectUriBlockedSchemeConfiguration](redirecturiblockedschemeconfiguration.md) (**web**, **spa**, **publicClient**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| blockedSchemes | String collection | Collection of URI schemes that are blocked for this specific platform. Schemes refer to URI schemes as defined in [RFC 3986 §3.1](https://datatracker.ietf.org/doc/html/rfc3986#section-3.1). |
| exemptFormats | String collection | Collection of URI patterns that are exempt from the blocked scheme restrictions for this platform. Patterns must follow specific validation rules for standard URI formats or URN formats. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriPlatformBlockedSchemeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriPlatformBlockedSchemeConfiguration",
  "blockedSchemes": [
    "String"
  ],
  "exemptFormats": [
    "String"
  ]
}
```

## Related content

- [redirectUriBlockedSchemeConfiguration](redirecturiblockedschemeconfiguration.md)
