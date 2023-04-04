---
title: "conditionalAccessApplications resource type"
description: "Represents applications and user actions included in and excluded from the policy scope."
ms.localizationpriority: medium
author: "davidspooner"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# conditionalAccessApplications resource type

Namespace: microsoft.graph

Represents the applications and user actions included in and excluded from the conditional access policy.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| excludeApplications | String collection | Can be one of the following: <li> The list of client IDs (**appId**) explicitly excluded from the policy.<li> `Office365` - For the list of apps included in `Office365`, see [Conditional Access target apps: Office 365](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps) |
| includeApplications | String collection | Can be one of the following: <li> The list of client IDs (**appId**) the policy applies to, unless explicitly excluded (in **excludeApplications**) <li> `All` <li> `Office365` - For the list of apps included in `Office365`, see [Conditional Access target apps: Office 365](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps) |
| includeUserActions | String collection | User actions to include. Supported values are `urn:user:registersecurityinfo` and `urn:user:registerdevice` |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeApplications",
    "excludeApplications",
    "includeUserActions"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessApplications"
}-->

```json
{
  "excludeApplications": ["String"],
  "includeApplications": ["String"],
  "includeUserActions": ["String"]
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

