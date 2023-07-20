---
title: "customExtensionHandlerInstance resource type (deprecated)"
description: "Used to record the status a custom workflow extension instance being run on an access package assignment request."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionHandlerInstance resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to record the status of  [custom workflow extension](customaccesspackageworkflowextension.md) instance being run on an [access package assignment request](accesspackageassignmentrequest.md).

## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|Identifier of the [customAccessPackageWorkflowExtension](customaccesspackageworkflowextension.md) triggered at this instance.|
|externalCorrelationId|String|The unique run ID for the logic app.|
|stage|accessPackageCustomExtensionStage|Indicates the stage of the request workflow when the access package custom extension runs. The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|
|status|accessPackageCustomExtensionHandlerStatus|Status of the request to run the access package custom extension workflow that is associated with the logic app. The possible values are: `requestSent`, `requestReceived`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionHandlerInstance"
}
-->
``` json

{
  "@odata.type": "#microsoft.graph.customExtensionHandlerInstance",
  "stage": "String",
  "customExtensionId": "String",
  "externalCorrelationId": "String",
  "status": "String"
}
```

