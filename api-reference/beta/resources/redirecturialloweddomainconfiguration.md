---
title: "redirectUriAllowedDomainConfiguration resource type"
description: "Configuration object that specifies allowed domains for redirect URIs with global and platform-specific settings."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriAllowedDomainConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that specifies allowed domains for redirect URIs with global and platform-specific settings. When enabled, only redirect URIs using the specified domains are permitted, creating a positive list of approved domains for enhanced security.

**Applies to:** [redirectUriConfiguration](redirecturiconfiguration.md) (**uriWithoutAllowedDomain**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| allowedDomains | String collection | Collection of domain names that are allowed globally across all platforms. Domain validation follows [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) (URI syntax, section 3.2.2 for the host component). Domain matching is case-insensitive and exact; wildcards are not supported. |
| excludeActors | [appManagementPolicyActorExemptions](../resources/appmanagementpolicyactorexemptions.md) | Applications or service principals that are exempt from this restriction. |
| isStateSetByMicrosoft | Boolean | Indicates whether the restriction state was set by Microsoft. |
| publicClient | [redirectUriPlatformAllowedDomainConfiguration](../resources/redirecturiplatformalloweddomainconfiguration.md) | Platform-specific allowed domain configuration for public client applications (native/mobile apps). |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset | Date and time when this restriction starts applying to newly created applications. Applications created before this date are not affected. |
| spa | [redirectUriPlatformAllowedDomainConfiguration](../resources/redirecturiplatformalloweddomainconfiguration.md) | Platform-specific allowed domain configuration for single-page applications (SPAs). |
| state | appManagementRestrictionState | Indicates whether the restriction is enabled or disabled. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. |
| web | [redirectUriPlatformAllowedDomainConfiguration](../resources/redirecturiplatformalloweddomainconfiguration.md) | Platform-specific allowed domain configuration for web applications. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriAllowedDomainConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriAllowedDomainConfiguration",
  "state": "String",
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "allowedDomains": [
    "String"
  ],
  "web": {
    "@odata.type": "microsoft.graph.redirectUriPlatformAllowedDomainConfiguration"
  },
  "spa": {
    "@odata.type": "microsoft.graph.redirectUriPlatformAllowedDomainConfiguration"
  },
  "publicClient": {
    "@odata.type": "microsoft.graph.redirectUriPlatformAllowedDomainConfiguration"
  },
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```

## Related content

- [redirectUriConfiguration](redirecturiconfiguration.md)
