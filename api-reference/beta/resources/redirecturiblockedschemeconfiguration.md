---
title: "redirectUriBlockedSchemeConfiguration resource type"
description: "Configuration object that specifies blocked URI schemes for redirect URIs with global and platform-specific settings and exempt format patterns."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriBlockedSchemeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that specifies blocked URI schemes for redirect URIs with global and platform-specific settings and exempt format patterns. Blocked schemes prevent applications from using specific URI schemes (such as `http`, `urn`, or custom schemes) in their redirect URIs.

**Applies to:** [redirectUriConfiguration](redirecturiconfiguration.md) (**uriWithBlockedScheme**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| blockedSchemes | String collection | Collection of URI schemes that are blocked globally across all platforms. Schemes refer to URI schemes as defined in [RFC 3986 §3.1](https://datatracker.ietf.org/doc/html/rfc3986#section-3.1). |
| excludeActors | [appManagementPolicyActorExemptions](../resources/appmanagementpolicyactorexemptions.md) | Applications or service principals that are exempt from this restriction. |
| exemptFormats | String collection | Collection of URI patterns that are exempt from the blocked scheme restrictions. Patterns must follow specific validation rules for standard URI formats or URN formats. |
| isStateSetByMicrosoft | Boolean | Indicates whether the restriction state was set by Microsoft. |
| publicClient | [redirectUriPlatformBlockedSchemeConfiguration](../resources/redirecturiplatformblockedschemeconfiguration.md) | Platform-specific blocked scheme configuration for public client applications (native/mobile apps). |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset | Date and time when this restriction starts applying to newly created applications. Applications created before this date are not affected. |
| spa | [redirectUriPlatformBlockedSchemeConfiguration](../resources/redirecturiplatformblockedschemeconfiguration.md) | Platform-specific blocked scheme configuration for single-page applications (SPAs). |
| state | appManagementRestrictionState | Indicates whether the restriction is enabled or disabled. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. |
| web | [redirectUriPlatformBlockedSchemeConfiguration](../resources/redirecturiplatformblockedschemeconfiguration.md) | Platform-specific blocked scheme configuration for web applications. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriBlockedSchemeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriBlockedSchemeConfiguration",
  "state": "String",
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "blockedSchemes": [
    "String"
  ],
  "exemptFormats": [
    "String"
  ],
  "web": {
    "@odata.type": "microsoft.graph.redirectUriPlatformBlockedSchemeConfiguration"
  },
  "spa": {
    "@odata.type": "microsoft.graph.redirectUriPlatformBlockedSchemeConfiguration"
  },
  "publicClient": {
    "@odata.type": "microsoft.graph.redirectUriPlatformBlockedSchemeConfiguration"
  },
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```

## Related content

- [redirectUriConfiguration](redirecturiconfiguration.md)
