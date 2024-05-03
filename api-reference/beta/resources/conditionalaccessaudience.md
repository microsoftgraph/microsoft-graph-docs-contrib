---
title: "conditionalaccessAudience resource type"
description: "Represents the audience evaluated by Conditional Access during a sign-in event."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# conditionalAccessAudience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audience evaluated by Conditional Access during a sign-in event.

## Properties

| Property   | Type    |Description|
|:---------------|:--------|:----------|
|applicationId|String|The ID of the application.|
|audienceReasons|[conditionalAccessAudienceReason](#conditionalaccessaudiencereason-values)|Indicates the reasons this audience was included for a sign-in request.|

## conditionalAccessAudienceReason values

|Member|
|:-----|
|resourcelessRequest|
|confidentialClientIdToken|
|confidentialClientNonIdToken|
|resourceMapping|
|resourceMappingDefault|
|scopeMapping|
|scopeMappingDefault|
|delegatedScope  |
|firstPartyResourceDefault|
|thirdPartyResourceDefault|
|unknownFutureValue|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessAudience"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessAudience",
  "applicationID": "String",
  "audienceReasons": "String"
}
```
