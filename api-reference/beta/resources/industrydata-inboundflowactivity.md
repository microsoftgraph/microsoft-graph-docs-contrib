---
title: "inboundFlowActivity resource type"
description: "Represents details about the run of an inbound flow."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# inboundFlowActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about the run of an inbound flow.

Inherits from [industryDataRunActivity](industrydata-industrydatarunactivity.md).

## Properties

| Property      | Type                                          | Description                                                                                                                                                                                                                                                           |
| :------------ | :-------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| blockingError | [microsoft.graph.publicError](publicerror.md) | An error object to diagnose critical failures in an activity. Inherited from [industryDataRunActivity](industrydata-industrydatarunactivity.md).                                                                                                                      |
| displayName   | String                                        | The name of the running flow. Inherited from [industryDataRunActivity](industrydata-industrydatarunactivity.md).                                                                                                                                                      |
| status        | microsoft.graph.industryData.industryDataActivityStatus                    | The current status of the activity. Inherited from [industryDataRunActivity](industrydata-industrydatarunactivity.md). The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

| Relationship | Type                                                         | Description                                                                                                             |
| :----------- | :----------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------- |
| activity     | [microsoft.graph.industryData.industryDataActivity](industrydata-industrydataactivity.md) | The flow performed by this activity. Inherited from [industryDataRunActivity](industrydata-industrydatarunactivity.md). |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.inboundFlowActivity",
  "baseType": "microsoft.graph.industryData.industryDataRunActivity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.inboundFlowActivity",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "status": "String"
}
```
