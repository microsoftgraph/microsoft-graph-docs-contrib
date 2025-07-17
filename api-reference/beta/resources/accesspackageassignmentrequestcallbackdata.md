---
title: "accessPackageAssignmentRequestCallbackData resource type"
description: "Access package assignment request workflow callback that defines a custom extension endpoint callback."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# accessPackageAssignmentRequestCallbackData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Access package assignment request workflow callback that defines a custom extension endpoint callback that is derived from [customextensiondata](../resources/customextensiondata.md). The following type is derived from this type:

- [assignmentRequestApprovalStageCallbackData](../resources/assignmentrequestapprovalstagecallbackdata.md)


Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionStageInstanceId|String|Unique identifier of the callout to the custom extension.|
|customExtensionStageInstanceDetail|String|Details for the callback.|
|stage|accessPackageCustomExtensionStage|Indicates the stage at which the custom callout extension is executed. The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|
|state|String|Allow the extension to be able to deny or cancel the request submitted by the requestor. The supported values are `Denied` and `Canceled`. This property can only be set for an `assignmentRequestCreated` stage.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

