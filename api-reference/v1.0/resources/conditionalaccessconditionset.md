---
title: "conditionalAccessConditionSet resource type"
description: "Represents the type of conditions that govern when the policy applies."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessConditionSet resource type

Namespace: microsoft.graph

Represents the type of conditions that govern when the policy applies.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|applications|[conditionalAccessApplications](conditionalaccessapplications.md)| Applications and user actions included in and excluded from the policy. Required. |
|authenticationFlows|[conditionalAccessAuthenticationFlows](conditionalaccessauthenticationflows.md)| Authentication flows included in the policy scope. |
|clientApplications|[conditionalAccessClientApplications](../resources/conditionalaccessclientapplications.md)|Client applications (service principals and workload identities) included in and excluded from the policy. Either **users** or **clientApplications** is required. |
|clientAppTypes|conditionalAccessClientApp collection| Client application types included in the policy. The possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported`, `other`. Required. <br/><br/> The `easUnsupported` enumeration member will be deprecated in favor of `exchangeActiveSync`, which includes EAS supported and unsupported platforms.|
|devices|[conditionalAccessDevices](conditionalaccessdevices.md)| Devices in the policy. |
|locations|[conditionalAccessLocations](conditionalaccesslocations.md)| Locations included in and excluded from the policy. |
|platforms|[conditionalAccessPlatforms](conditionalaccessplatforms.md)| Platforms included in and excluded from the policy. |
|servicePrincipalRiskLevels|riskLevel collection| Service principal risk levels included in the policy. The possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.|
|signInRiskLevels|riskLevel collection| Sign-in risk levels included in the policy. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Required.|
|userRiskLevels|riskLevel collection| User risk levels included in the policy. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Required.|
|users|[conditionalAccessUsers](conditionalaccessusers.md)| Users, groups, and roles included in and excluded from the policy. Either **users** or **clientApplications** is required. |
|insiderRiskLevels|conditionalAccessInsiderRiskLevels| Insider risk levels included in the policy. The possible values are: `minor`, `moderate`, `elevated`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "clientAppTypes",
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
  "clientApplications": {"@odata.type": "microsoft.graph.conditionalAccessClientApplications"},
  "clientAppTypes": ["String"],
  "devices": {"@odata.type": "microsoft.graph.conditionalAccessDevices"},
  "locations": {"@odata.type": "microsoft.graph.conditionalAccessLocations"},
  "platforms": {"@odata.type": "microsoft.graph.conditionalAccessPlatforms"},
  "servicePrincipalRiskLevels": ["String"],
  "signInRiskLevels": ["String"],
  "userRiskLevels": ["String"],
  "users": {"@odata.type": "microsoft.graph.conditionalAccessUsers"},
  "insiderRiskLevels": "String",
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


