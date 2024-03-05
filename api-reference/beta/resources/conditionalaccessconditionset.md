---
title: "conditionalAccessConditionSet resource type"
description: "Represents the type of conditions that govern when the policy applies."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessConditionSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the type of conditions that govern when the policy applies.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applications|[conditionalAccessApplications](conditionalaccessapplications.md)| Applications and user actions included in and excluded from the policy. Required. |
|authenticationFlows|[conditionalAccessAuthenticationFlows](conditionalaccessauthenticationflows.md)| Authentication flows included in the policy scope. For more information, see [Conditional Access: Authentication flows](/entra/identity/conditional-access/concept-authentication-flows). |
|users|[conditionalAccessUsers](conditionalaccessusers.md)| Users, groups, and roles included in and excluded from the policy. Either **users** or **clientApplications** is required. |
|clientApplications|[conditionalAccessClientApplications](../resources/conditionalaccessclientapplications.md)|Client applications (service principals and workload identities) included in and excluded from the policy. Either **users** or **clientApplications** is required. |
|clientAppTypes|conditionalAccessClientApp collection| Client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported`, `other`. Required. <br/><br/> The `easUnsupported` enumeration member will be deprecated in favor of `exchangeActiveSync`, which includes EAS supported and unsupported platforms.|
|deviceStates|[conditionalAccessDeviceStates](conditionalaccessdevicestates.md)| Device states in the policy. To be deprecated and removed. Use the **devices** property instead. |
|devices|[conditionalAccessDevices](conditionalaccessdevices.md)| Devices in the policy. |
|locations|[conditionalAccessLocations](conditionalaccesslocations.md)| Locations included in and excluded from the policy. |
|platforms|[conditionalAccessPlatforms](conditionalaccessplatforms.md)| Platforms included in and excluded from the policy. |
|servicePrincipalRiskLevels|riskLevel collection| Service principal risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.|
|signInRiskLevels|riskLevel collection| Sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Required.|
|userRiskLevels|riskLevel collection| User risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "clientAppTypes",
    "deviceStates",
    "devices",
    "locations",
    "platforms",
    "signInRiskLevels",
    "authenticationFlows"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
  "baseType": null
}-->

```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessConditionSet",
  "applications": {"@odata.type": "microsoft.graph.conditionalAccessApplications"},
  "users": {"@odata.type": "microsoft.graph.conditionalAccessUsers"},
  "clientApplications": {"@odata.type": "microsoft.graph.conditionalAccessClientApplications"},
  "clientAppTypes": ["String"],
  "deviceStates": {"@odata.type": "microsoft.graph.conditionalAccessDeviceStates"},
  "devices": {"@odata.type": "microsoft.graph.conditionalAccessDevices"},
  "locations": {"@odata.type": "microsoft.graph.conditionalAccessLocations"},
  "platforms": {"@odata.type": "microsoft.graph.conditionalAccessPlatforms"},
  "servicePrincipalRiskLevels": ["String"],
  "signInRiskLevels": ["String"],
  "authenticationFlows": {"@odata.type": "microsoft.graph.conditionalAccessAuthenticationFlows"} 
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


