---
title: "accessPackageAssignmentRequestCallbackData resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# accessPackageAssignmentRequestCallbackData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answers|[accessPackageAnswer](../resources/accesspackageanswer.md) collection|**TODO: Add Description**|
|customExtensionStageInstanceId|String|**TODO: Add Description**|
|schedule|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|stage|accessPackageCustomExtensionStage|**TODO: Add Description**.The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|
|state|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestCallbackData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestCallbackData",
  "stage": "String",
  "customExtensionStageInstanceId": "String",
  "state": "String",
  "answers": [
    {
      "@odata.type": "microsoft.graph.accessPackageAnswerString"
    }
  ],
  "schedule": {
    "@odata.type": "microsoft.graph.requestSchedule"
  }
}
```

