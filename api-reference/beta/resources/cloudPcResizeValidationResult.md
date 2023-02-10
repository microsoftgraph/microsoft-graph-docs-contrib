---
title: "cloudPcResizeValidationResult resource type"
description: "Represents the validation result of single resized Cloud PC in bulk resize action."
author: "Aria Zhang (yuzhang3)"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcResizeValidationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the validation result of single resized Cloud PC in bulk resize action.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The id of [cloudPC](../resources/cloudpc.md) with the result refers to.|
|validationResult|[cloudPcResizeValidationCode](#cloudpcresizevalidationcode-values)|The validation result for the Cloud PC resize action.|


### cloudPcResizeValidationCode values
|Member|Value|Description|
|:---|:-|:---|
|success|0|Indicates that resize validation is success.|
|cloudPcNotFound|1|Indicates that the Cloud PC is not found.|
|operationConflict|2|Indicates that resize action has conflict with other action.|
|operationNotSupported|3|Indicates that the resize action is not supported for the Cloud PC.|
|targetLicenseHasAssigned|4|Indicates that the target license has already been assigned to the User.|
|internalServerError|5|Indicates that the validation is failed with internal server error.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcResizeValidationResult"
}
-->

``` json
{ 
  "cloudPcId": "30d0e128-de93-41dc-89ec-33d84bb662a0",
  "validationResult": "success" 
}
```
