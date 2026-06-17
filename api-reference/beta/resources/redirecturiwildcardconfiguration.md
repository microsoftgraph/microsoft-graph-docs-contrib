---
title: "redirectUriWildcardConfiguration resource type"
description: "Configuration object that controls the use of wildcard patterns in redirect URIs with configurable exceptions."
author: "antonvano"
ms.date: 01/14/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# redirectUriWildcardConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that controls the use of wildcard patterns in redirect URIs with configurable exceptions. When enabled, applications are restricted from using wildcard patterns in their redirect URIs, improving security by preventing overly permissive redirect configurations.

**Applies to:** [redirectUriConfiguration](redirecturiconfiguration.md) (**uriWithWildcard**)

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| excludeActors | [appManagementPolicyActorExemptions](../resources/appmanagementpolicyactorexemptions.md) | Applications or service principals that are exempt from this restriction. |
| excludeFormats | [redirectUriWildcardExcludeFormats](../resources/redirecturiwildcardexcludeformats.md) | Configuration that specifies exceptions to the wildcard restriction, such as allowing wildcards for specific trusted domains. |
| isStateSetByMicrosoft | Boolean | Indicates whether the restriction state was set by Microsoft. |
| restrictForAppsCreatedAfterDateTime | DateTimeOffset | Date and time when this restriction starts applying to newly created applications. Applications created before this date are not affected. |
| state | appManagementRestrictionState | Indicates whether the restriction is enabled or disabled. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.redirectUriWildcardConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redirectUriWildcardConfiguration",
  "state": "String",
  "isStateSetByMicrosoft": "Boolean",
  "restrictForAppsCreatedAfterDateTime": "String (timestamp)",
  "excludeFormats": {
    "@odata.type": "microsoft.graph.redirectUriWildcardExcludeFormats"
  },
  "excludeActors": {
    "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
  }
}
```

## Related content

- [redirectUriConfiguration](redirecturiconfiguration.md)
- [redirectUriWildcardExcludeFormats](redirecturiwildcardexcludeformats.md)
