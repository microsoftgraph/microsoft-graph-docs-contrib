---
title: "conditionalAccessAudience resource type"
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
|audienceReasons|conditionalAccessAudienceReason|An enumeration value that that indicates the reasons this audience was included for a sign-in request.|


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
