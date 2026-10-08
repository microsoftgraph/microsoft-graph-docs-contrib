---
title: "conditionalAccessApplications resource type"
description: "Represents applications and user actions included in and excluded from the policy scope."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessApplications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the applications and user actions included in and excluded from the conditional access policy.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| applicationFilter | [conditionalAccessFilter](conditionalaccessfilter.md) | Filter that defines the dynamic-application-syntax rule to include/exclude cloud applications. A filter can use custom security attributes to include/exclude applications. |
| excludeApplications | String collection | Can be one of the following: <ul><li> The list of client IDs (**appId**) explicitly excluded from the policy.</li><li> `Office365` - For the list of apps included in `Office365`, see [Apps included in Conditional Access Office 365 app suite](/entra/identity/conditional-access/reference-office-365-application-contents) </li><li> `MicrosoftAdminPortals` - For more information, see [Conditional Access Target resources: Microsoft Admin Portals](/entra/identity/conditional-access/concept-conditional-access-cloud-apps#microsoft-admin-portals)|</li></ul>
| globalSecureAccess (deprecated)| [conditionalAccessGlobalSecureAccess](conditionalaccessglobalsecureaccess.md) | Represents traffic profile for Global Secure Access. This property is deprecated and will stop returning data on June 1, 2025. Use new Global Secure Access applications instead.|
| includeApplications | String collection | Can be one of the following: <ul><li> The list of client IDs (**appId**) the policy applies to, unless explicitly excluded (in **excludeApplications**) </li><li> `All` </li><li> `Office365` - For the list of apps included in `Office365`, see [Apps included in Conditional Access Office 365 app suite](/entra/identity/conditional-access/reference-office-365-application-contents) </li><li> `MicrosoftAdminPortals` - For more information, see [Conditional Access Target resources: Microsoft Admin Portals](/entra/identity/conditional-access/concept-conditional-access-cloud-apps#microsoft-admin-portals)</li></ul> |
| includeUserActions | String collection | User actions to include. Supported values are `urn:user:registersecurityinfo` and `urn:user:registerdevice` |
| includeAuthenticationContextClassReferences | String collection | Authentication context class references include. Supported values are `c1` through `c25`. |
| networkAccess (deprecated)| [conditionalAccessNetworkAccess](conditionalaccessnetworkaccess.md) | Represents traffic profile for Global Secure Access. This property is deprecated and will stop returning data on June 1, 2025. Use new Global Secure Access applications instead.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeApplications",
    "excludeApplications",
    "applicationFilter",
    "includeUserActions"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessApplications"
}-->

```json
{
  "includeApplications": ["String"],
  "excludeApplications": ["String"],
  "applicationFilter": {"@odata.type": "microsoft.graph.conditionalAccessFilter"},
  "includeUserActions": ["String"],
  "networkAccess": {"@odata.type": "microsoft.graph.conditionalAccessNetworkAccess"},
  "globalSecureAccess": {"@odata.type": "microsoft.graph.conditionalAccessGlobalSecureAccess"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessApplications resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
