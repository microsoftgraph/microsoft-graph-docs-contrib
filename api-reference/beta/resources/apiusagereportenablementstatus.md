---
title: "apiUsageReportEnablementStatus resource type"
description: "Represents the enablement status of a specific API usage report metric for SharePoint."
author: "abhishekkakhandiki"
ms.date: 05/21/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
toc.title: API usage report enablement status
---

# apiUsageReportEnablementStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the enablement status of a specific API usage report metric for SharePoint. This resource indicates whether a particular metric is collected and reported.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|metric|String|The name of the API usage report metric. The supported values are: `egressReport`, `throttlingReport`.|
|onboardingStatus|apiUsageReportOnboardingStatus|The current onboarding status of the metric. The possible values are: `enabling`, `enabled`, `disabling`, `disabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "metric",
  "@odata.type": "microsoft.graph.apiUsageReportEnablementStatus",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.apiUsageReportEnablementStatus",
  "metric": "String",
  "onboardingStatus": "String"
}
```
