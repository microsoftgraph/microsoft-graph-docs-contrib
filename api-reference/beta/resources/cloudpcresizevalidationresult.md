---
title: "cloudPcResizeValidationResult resource type"
description: "Represents the validation result of a single resized Cloud PC during the bulk-resize action ."
author: "SleepIsImportant"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcResizeValidationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the validation result of a single resized Cloud PC during the bulk-resize action.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The [cloudPC](../resources/cloudpc.md) id that corresponds to its unique identifier.|
|validationResult|[cloudPcResizeValidationCode](#cloudpcresizevalidationcode-values)|Describes a list of the validation result for the Cloud PC resize action. The possible values are: `success`, `cloudPcNotFound`, `operationCnflict`, `operationNotSupported`, `targetLicenseHasAssigned`, `internalServerError`, and `unknownFutureValue`.|


### cloudPcResizeValidationCode values
|Member|Description|
|:---|:---|
|success|Indicates that the resize validation was successful.|
|cloudPcNotFound|Indicates that the Cloud PC was not found.|
|operationConflict|Indicates that resize action has a conflict with another action.|
|operationNotSupported|Indicates that the resize action is not supported for the Cloud PC.|
|targetLicenseHasAssigned|Indicates that the target license has already been assigned to the user.|
|internalServerError|Indicates that the validation failed with an internal server error.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

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
