---
title: "teamworkDateTimeConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDateTimeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateFormat|String|**TODO: Add Description**|
|officeHoursEndTime|TimeOfDay|**TODO: Add Description**|
|officeHoursStartTime|TimeOfDay|**TODO: Add Description**|
|timeFormat|String|**TODO: Add Description**|
|timeZone|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDateTimeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDateTimeConfiguration",
  "timeZone": "String",
  "dateFormat": "String",
  "timeFormat": "String",
  "officeHoursStartTime": "String (time of day)",
  "officeHoursEndTime": "String (time of day)"
}
```

