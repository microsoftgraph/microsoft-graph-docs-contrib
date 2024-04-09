---
title: "conditionalAccessAudience resource type"
description: "Indicates the conditional access audience for sign-ins."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# conditionalAccessAudience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates information about the audience during conditional access sign-ins 

## Properties

| Property   | Type    |Description|
|:---------------|:--------|:----------|
|applicationId|String|The id of the application.|
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
  "audienceReasons": "conditionalAccessAudienceReason"
}
```
