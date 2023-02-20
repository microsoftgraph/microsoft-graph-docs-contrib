---
title: "accessPackageAssignmentRequestCallbackData resource type"
description: "Access package assignment request workflow calllback back that custom extension endpoint callback, derived from [customextensiondata](../resources/customextensiondata.md)"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "vikama-microsoft"
doc_type: resourcePageType
---

# accessPackageAssignmentRequestCallbackData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Access package assignment request workflow calllback back that custom extension endpoint callback, derived from [customextensiondata](../resources/customextensiondata.md)


Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionStageInstanceId|String|Unique Id of the callout to the custom extension that was nade at a stage of request processing.|
|customExtensionStageInstanceDetail|String|Details for the callback so that the admin or approver can see this information.|
|stage|accessPackageCustomExtensionStage|Indicate at which stage the custom callout extension will be executed.The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|
|state|String|Allow extension to be able to deny or cancel the request submitted by the requestor. Supported values: `Denied`, `Canceled`. This property can only be set for `assignmentRequestCreated` stage.|

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
  "customExtensionStageInstanceDetail": "String",
  "state": "String"
}
```

