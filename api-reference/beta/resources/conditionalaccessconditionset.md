---
title: "conditionalAccessConditionSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# conditionalAccessConditionSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applications|[conditionalAccessApplications](../resources/conditionalaccessapplications.md)|**TODO: Add Description**|
|authenticationFlows|[conditionalAccessAuthenticationFlows](../resources/conditionalaccessauthenticationflows.md)|**TODO: Add Description**|
|clientApplications|[conditionalAccessClientApplications](../resources/conditionalaccessclientapplications.md)|**TODO: Add Description**|
|clientAppTypes|conditionalAccessClientApp collection|**TODO: Add Description**|
|devices|[conditionalAccessDevices](../resources/conditionalaccessdevices.md)|**TODO: Add Description**|
|deviceStates|[conditionalAccessDeviceStates](../resources/conditionalaccessdevicestates.md)|**TODO: Add Description**|
|insiderRiskLevels|conditionalAccessInsiderRiskLevels|**TODO: Add Description**.The possible values are: `minor`, `moderate`, `elevated`, `unknownFutureValue`.|
|locations|[conditionalAccessLocations](../resources/conditionalaccesslocations.md)|**TODO: Add Description**|
|platforms|[conditionalAccessPlatforms](../resources/conditionalaccessplatforms.md)|**TODO: Add Description**|
|servicePrincipalRiskLevels|riskLevel collection|**TODO: Add Description**|
|signInRiskLevels|riskLevel collection|**TODO: Add Description**|
|userRiskLevels|riskLevel collection|**TODO: Add Description**|
|users|[conditionalAccessUsers](../resources/conditionalaccessusers.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessConditionSet",
  "applications": {
    "@odata.type": "microsoft.graph.conditionalAccessApplications"
  },
  "users": {
    "@odata.type": "microsoft.graph.conditionalAccessUsers"
  },
  "clientApplications": {
    "@odata.type": "microsoft.graph.conditionalAccessClientApplications"
  },
  "signInRiskLevels": [
    "String"
  ],
  "userRiskLevels": [
    "String"
  ],
  "servicePrincipalRiskLevels": [
    "String"
  ],
  "platforms": {
    "@odata.type": "microsoft.graph.conditionalAccessPlatforms"
  },
  "locations": {
    "@odata.type": "microsoft.graph.conditionalAccessLocations"
  },
  "clientAppTypes": [
    "String"
  ],
  "deviceStates": {
    "@odata.type": "microsoft.graph.conditionalAccessDeviceStates"
  },
  "devices": {
    "@odata.type": "microsoft.graph.conditionalAccessDevices"
  },
  "authenticationFlows": {
    "@odata.type": "microsoft.graph.conditionalAccessAuthenticationFlows"
  },
  "insiderRiskLevels": "String"
}
```
