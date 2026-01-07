---
title: "assignmentRequestApprovalStageCallbackData resource type"
description: "Access package assignment request workflow callback that defines a custom extension endpoint approval callback."
author: "vikama-microsoft"
ms.date: 07/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# assignmentRequestApprovalStageCallbackData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Access package assignment request workflow callback that defines a custom extension endpoint approval callback that is derived from [customextensiondata](../resources/customextensiondata.md).


Inherits from [accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalStage|[accessPackageApprovalStage](../resources/accesspackageapprovalstage.md)|The stage in the approval decision.|
|customExtensionStageInstanceDetail|String|Details for the callback. Inherited from [accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md).|
|customExtensionStageInstanceId|String|Unique identifier of the callout to the custom extension. Inherited from [accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md).|
|stage|accessPackageCustomExtensionStage|Indicates the stage at which the custom callout extension is executed. Inherited from [accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md).The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|
|state|String|Allows the extension to be able to deny or cancel the request submitted by the requestor. The supported values are `Denied` and `Canceled`. This property can only be set for an `assignmentRequestCreated` stage. Inherited from [accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentRequestApprovalStageCallbackData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentRequestApprovalStageCallbackData",
  "stage": "String",
  "customExtensionStageInstanceId": "String",
  "customExtensionStageInstanceDetail": "String",
  "state": "String",
  "approvalStage": {
    "@odata.type": "microsoft.graph.accessPackageApprovalStage"
  }
}
```
