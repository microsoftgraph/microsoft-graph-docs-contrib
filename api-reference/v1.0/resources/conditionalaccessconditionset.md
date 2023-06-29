---
title: "conditionalAccessConditionSet resource type"
description: "Represents the type of conditions that govern when the policy applies."
ms.localizationpriority: medium
author: "davidspooner"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessConditionSet resource type

Namespace: microsoft.graph

Represents the type of conditions that govern when the policy applies.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applications|[conditionalAccessApplications](conditionalaccessapplications.md)| Applications and user actions included in and excluded from the policy. Required. |
|clientApplications|[conditionalAccessClientApplications](../resources/conditionalaccessclientapplications.md)|Client applications (service principals and workload identities) included in and excluded from the policy. Either **users** or **clientApplications** is required. |
|clientAppTypes|conditionalAccessClientApp collection| Client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported`, `other`. Required.|
|devices|[conditionalAccessDevices](conditionalaccessdevices.md)| Devices in the policy. |
|locations|[conditionalAccessLocations](conditionalaccesslocations.md)| Locations included in and excluded from the policy. |
|platforms|[conditionalAccessPlatforms](conditionalaccessplatforms.md)| Platforms included in and excluded from the policy. |
|servicePrincipalRiskLevels|riskLevel collection| Service principal risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.|
|signInRiskLevels|riskLevel collection| Sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Required.|
|userRiskLevels|riskLevel collection| User risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Required.|
|users|[conditionalAccessUsers](conditionalaccessusers.md)| Users, groups, and roles included in and excluded from the policy. Either **users** or **clientApplications** is required. |

>**Note:**
>* **clientAppType** `modern` is going to be deprecated and replaced by `mobileAppsAndDesktopClients`. <br>
>* **clientAppType** `easUnsupported` is going to be deprecated in favor of `exchangeActiveSync` which includes EAS supported and unsupported platforms. <br>
>* We are deprecating the **deviceStates** condition, and it may be removed in the future. Going forward, use **devices** condition.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "clientAppTypes",
    "deviceStates",
    "devices",
    "locations",
    "platforms",
    "signInRiskLevels"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
  "baseType": null
}-->

```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessConditionSet",
  "applications": {"@odata.type": "microsoft.graph.conditionalAccessApplications"},
  "clientApplications": {"@odata.type": "microsoft.graph.conditionalAccessClientApplications"},
  "clientAppTypes": ["String"],
  "devices": {"@odata.type": "microsoft.graph.conditionalAccessDevices"},
  "locations": {"@odata.type": "microsoft.graph.conditionalAccessLocations"},
  "platforms": {"@odata.type": "microsoft.graph.conditionalAccessPlatforms"},
  "servicePrincipalRiskLevels": ["String"],
  "signInRiskLevels": ["String"],
  "userRiskLevels": ["String"],
  "users": {"@odata.type": "microsoft.graph.conditionalAccessUsers"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessConditionset resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


