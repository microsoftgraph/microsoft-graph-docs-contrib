---
title: "conditionalAccessSessionControls resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# conditionalAccessSessionControls resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationEnforcedRestrictions|[applicationEnforcedRestrictionsSessionControl](../resources/applicationenforcedrestrictionssessioncontrol.md)|**TODO: Add Description**|
|cloudAppSecurity|[cloudAppSecuritySessionControl](../resources/cloudappsecuritysessioncontrol.md)|**TODO: Add Description**|
|continuousAccessEvaluation|[continuousAccessEvaluationSessionControl](../resources/continuousaccessevaluationsessioncontrol.md)|**TODO: Add Description**|
|disableResilienceDefaults|Boolean|**TODO: Add Description**|
|persistentBrowser|[persistentBrowserSessionControl](../resources/persistentbrowsersessioncontrol.md)|**TODO: Add Description**|
|secureSignInSession|[secureSignInSessionControl](../resources/securesigninsessioncontrol.md)|**TODO: Add Description**|
|signInFrequency|[signInFrequencySessionControl](../resources/signinfrequencysessioncontrol.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessSessionControls",
  "applicationEnforcedRestrictions": {
    "@odata.type": "microsoft.graph.applicationEnforcedRestrictionsSessionControl"
  },
  "cloudAppSecurity": {
    "@odata.type": "microsoft.graph.cloudAppSecuritySessionControl"
  },
  "continuousAccessEvaluation": {
    "@odata.type": "microsoft.graph.continuousAccessEvaluationSessionControl"
  },
  "disableResilienceDefaults": "Boolean",
  "persistentBrowser": {
    "@odata.type": "microsoft.graph.persistentBrowserSessionControl"
  },
  "secureSignInSession": {
    "@odata.type": "microsoft.graph.secureSignInSessionControl"
  },
  "signInFrequency": {
    "@odata.type": "microsoft.graph.signInFrequencySessionControl"
  }
}
```

