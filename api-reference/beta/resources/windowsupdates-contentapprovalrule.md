---
title: "contentApprovalRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# contentApprovalRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentFilter|[microsoft.graph.windowsUpdates.contentFilter](../resources/windowsupdates-contentfilter.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).|
|durationBeforeDeploymentStart|Duration|**TODO: Add Description**|
|lastEvaluatedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApprovalRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
  "createdDateTime": "String (timestamp)",
  "lastEvaluatedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "contentFilter": {
    "@odata.type": "microsoft.graph.windowsUpdates.contentFilter"
  },
  "durationBeforeDeploymentStart": "String (duration)"
}
```

