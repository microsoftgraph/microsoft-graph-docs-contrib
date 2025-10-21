---
title: "accessPackageAssignmentCalloutData resource type"
description: "The data sent to an Azure Logic App connected to a custom extension within a catalog and used via an access package assignment"
author: "AlexFilipin"
ms.date: 10/18/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageAssignmentCalloutData resource type

Namespace: microsoft.graph

Represents the data sent to Azure Logic Apps as part of a [custom extension callout request](../resources/customextensioncalloutrequest.md) when a custom extension in a catalog gets used as part of an access package assignment.

Inherits from [customExtensionData](../resources/customextensiondata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentRequestId|String|The request ID of the access package assignment.|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|The callback configuration for a custom extension.|
|customExtensionStageInstanceId|String|Unique identifier of the callout to the custom extension.|
|stage|String|Indicates the stage of the access package assignment request workflow when the access package custom extension runs.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](../resources/accesspackage.md)|The access package where the custom extension call out data to the Azure Logic App is being sent.|
|accessPackageCatalog|[accessPackageCatalog](../resources/accesspackagecatalog.md)|The catalog that contains the custom extension.|
|assignment|[accessPackageAssignment](../resources/accesspackageassignment.md)|The specific assignment of the access package.|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentCalloutData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentCalloutData",
  "accessPackageAssignmentRequestId": "String",
  "customExtensionStageInstanceId": "String",
  "stage": "String",
  "callbackConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
  }
}
```
