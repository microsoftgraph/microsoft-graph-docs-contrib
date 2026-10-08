---
title: "redirectUriConfiguration resource type"
description: "Configuration object that contains redirect URI validation rules and restrictions for applications."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that contains redirect URI validation rules and restrictions for applications. This object is configured on the **redirectUris** property of the [appManagementApplicationConfiguration](/graph/api/resources/appmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true) and [customAppManagementApplicationConfiguration](/graph/api/resources/customappmanagementapplicationconfiguration?view=graph-rest-beta&preserve-view=true) resources.

**Applies to:** [appManagementApplicationConfiguration](appmanagementapplicationconfiguration.md), [customAppManagementApplicationConfiguration](customappmanagementapplicationconfiguration.md), [tenantAppManagementPolicy](tenantappmanagementpolicy.md) (**applicationRestrictions**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| uriWithBlockedDomain | [redirectUriBlockedDomainConfiguration](../resources/redirecturiblockeddomainconfiguration.md) | Configuration that specifies blocked domains for redirect URIs with global and platform-specific settings. |
| uriWithBlockedScheme | [redirectUriBlockedSchemeConfiguration](../resources/redirecturiblockedschemeconfiguration.md) | Configuration that specifies blocked URI schemes for redirect URIs with global and platform-specific settings and exempt format patterns. |
| uriWithWildcard | [redirectUriWildcardConfiguration](../resources/redirecturiwildcardconfiguration.md) | Configuration that controls the use of wildcard patterns in redirect URIs with configurable exceptions. |
| uriWithoutAllowedDomain | [redirectUriAllowedDomainConfiguration](../resources/redirecturialloweddomainconfiguration.md) | Configuration that specifies allowed domains for redirect URIs with global and platform-specific settings. |
| uriWithoutAllowedScheme | [redirectUriAllowedSchemeConfiguration](../resources/redirecturiallowedschemeconfiguration.md) | Configuration that specifies allowed URI schemes for redirect URIs with global and platform-specific settings. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriConfiguration",
  "uriWithBlockedScheme": {
    "@odata.type": "microsoft.graph.redirectUriBlockedSchemeConfiguration"
  },
  "uriWithoutAllowedScheme": {
    "@odata.type": "microsoft.graph.redirectUriAllowedSchemeConfiguration"
  },
  "uriWithWildcard": {
    "@odata.type": "microsoft.graph.redirectUriWildcardConfiguration"
  },
  "uriWithoutAllowedDomain": {
    "@odata.type": "microsoft.graph.redirectUriAllowedDomainConfiguration"
  },
  "uriWithBlockedDomain": {
    "@odata.type": "microsoft.graph.redirectUriBlockedDomainConfiguration"
  }
}
```

## Related content

- [appManagementApplicationConfiguration](appmanagementapplicationconfiguration.md)
- [customAppManagementApplicationConfiguration](customappmanagementapplicationconfiguration.md)
- [tenantAppManagementPolicy](tenantappmanagementpolicy.md)
