---
title: "redirectUriAllowedSchemeConfiguration resource type"
description: "Configuration object that specifies allowed URI schemes for redirect URIs with global and platform-specific settings."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriAllowedSchemeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that specifies allowed URI schemes for redirect URIs with global and platform-specific settings. When enabled, only redirect URIs using the specified schemes are permitted. The `allowedSchemes` property accepts `"*"` as a special value to allow any URI scheme for a specific platform.

**Applies to:** [redirectUriConfiguration](redirecturiconfiguration.md) (**uriWithoutAllowedScheme**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| allowedSchemes | String collection | Collection of URI schemes that are allowed globally across all platforms. Schemes refer to URI schemes as defined in [RFC 3986 §3.1](https://datatracker.ietf.org/doc/html/rfc3986#section-3.1). The value `"*"` can be used to allow any scheme. |
| excludeActors | [appManagementPolicyActorExemptions](../resources/appmanagementpolicyactorexemptions.md) | Applications or service principals that are exempt from this restriction. |
| isStateSetByMicrosoft | Boolean | Indicates whether the restriction state was set by Microsoft. |
| publicClient | [redirectUriPlatformAllowedSchemeConfiguration](../resources/redirecturiplatformallowedschemeconfiguration.md) | Platform-specific allowed scheme configuration for public client applications (native/mobile apps). |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset | Date and time when this restriction starts applying to newly created applications. Applications created before this date are not affected. |
| spa | [redirectUriPlatformAllowedSchemeConfiguration](../resources/redirecturiplatformallowedschemeconfiguration.md) | Platform-specific allowed scheme configuration for single-page applications (SPAs). |
| state | appManagementRestrictionState | Indicates whether the restriction is enabled or disabled. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. |
| web | [redirectUriPlatformAllowedSchemeConfiguration](../resources/redirecturiplatformallowedschemeconfiguration.md) | Platform-specific allowed scheme configuration for web applications. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriAllowedSchemeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriAllowedSchemeConfiguration",
  "state": "String",
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "allowedSchemes": [
    "String"
  ],
  "web": {
    "@odata.type": "microsoft.graph.redirectUriPlatformAllowedSchemeConfiguration"
  },
  "spa": {
    "@odata.type": "microsoft.graph.redirectUriPlatformAllowedSchemeConfiguration"
  },
  "publicClient": {
    "@odata.type": "microsoft.graph.redirectUriPlatformAllowedSchemeConfiguration"
  },
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```

## Related content

- [redirectUriConfiguration](redirecturiconfiguration.md)
