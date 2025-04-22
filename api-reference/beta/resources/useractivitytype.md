---
title: "ActivityType resource type"
toc.title: "ActivityType resource type (preview)"
description: "Specifies the type of user activity being processed or evaluated."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# ActivityType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the type of user activity being processed or evaluated. Used within `activityMetadata` for processing requests like `processContent`.

## Members

|Member|Value|Description|
|:---|:---|:---|
|uploadText|1|Activity involves uploading text content.|
|uploadFile|2|Activity involves uploading a file.|
|downloadText|3|Activity involves downloading text content.|
|downloadFile|4|Activity involves downloading a file.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userActivityType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userActivityType",
  "value": "String"
}
```
