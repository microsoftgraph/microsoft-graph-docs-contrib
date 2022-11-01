---
title: "contentApprovalRule resource type"
description: "Rule governing the automatic creation of content approvals."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# contentApprovalRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rules governing the automatic creation of content approvals.

Inherits from [complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentFilter|[microsoft.graph.windowsUpdates.contentFilter](../resources/windowsupdates-contentfilter.md)|A filter to determine which content matches the rule on an ongoing basis.|
|createdDateTime|DateTimeOffset|The date and time when created. Inherited from [microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).|
|durationBeforeDeploymentStart|Duration|Time before the deployment starts.|
|lastEvaluatedDateTime|DateTimeOffset|The date and time the rule was last evaluated. Inherited from [microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time the rule was last modified. Inherited from [microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md).|

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

