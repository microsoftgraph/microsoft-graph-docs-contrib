---
title: "redirectUriBlockedDomainConfiguration resource type"
description: "Configuration object that specifies blocked domains for redirect URIs with global and platform-specific settings."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriBlockedDomainConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that specifies blocked domains for redirect URIs with global and platform-specific settings. Blocked domains prevent applications from using specific domains (such as URL shorteners or cloud-hosted domains) in their redirect URIs to improve security. Configured on the [redirectUriConfiguration](../resources/redirecturiconfiguration.md) resource.

**Applies to:** [redirectUriConfiguration](redirecturiconfiguration.md) (**uriWithBlockedDomain**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| blockedDomains | String collection | Collection of domain names that are blocked globally across all platforms. Domain validation follows [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) (URI syntax, section 3.2.2 for the host component). Domain matching is case-insensitive and exact; wildcards are not supported. |
| excludeActors | [appManagementPolicyActorExemptions](../resources/appmanagementpolicyactorexemptions.md) | Applications or service principals that are exempt from this restriction. |
| isStateSetByMicrosoft | Boolean | Indicates whether the restriction state was set by Microsoft. |
| publicClient | [redirectUriPlatformBlockedDomainConfiguration](../resources/redirecturiplatformblockeddomainconfiguration.md) | Platform-specific blocked domain configuration for public client applications (native/mobile apps). |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset | Date and time when this restriction starts applying to newly created applications. Applications created before this date are not affected. |
| spa | [redirectUriPlatformBlockedDomainConfiguration](../resources/redirecturiplatformblockeddomainconfiguration.md) | Platform-specific blocked domain configuration for single-page applications (SPAs). |
| state | appManagementRestrictionState | Indicates whether the restriction is enabled or disabled. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. |
| web | [redirectUriPlatformBlockedDomainConfiguration](../resources/redirecturiplatformblockeddomainconfiguration.md) | Platform-specific blocked domain configuration for web applications. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriBlockedDomainConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriBlockedDomainConfiguration",
  "state": "String",
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "blockedDomains": [
    "String"
  ],
  "web": {
    "@odata.type": "microsoft.graph.redirectUriPlatformBlockedDomainConfiguration"
  },
  "spa": {
    "@odata.type": "microsoft.graph.redirectUriPlatformBlockedDomainConfiguration"
  },
  "publicClient": {
    "@odata.type": "microsoft.graph.redirectUriPlatformBlockedDomainConfiguration"
  },
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```

## Related content

- [redirectUriConfiguration](redirecturiconfiguration.md)
