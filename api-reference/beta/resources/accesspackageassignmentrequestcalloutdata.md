---
title: "accessPackageAssignmentRequestCalloutData resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/18/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# accessPackageAssignmentRequestCalloutData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data sent to Azure Logic Apps as part of a [custom extension callout request](../resources/customextensioncalloutrequest.md) when a custom extension in a catalog gets used as part of an access package assignment request. 

Inherits from [customExtensionData](../resources/customextensiondata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentRequestId|String|The request ID of the access package assignment.|
|answers|[accessPackageAnswer](../resources/accesspackageanswer.md) collection|The requestor's provided answer to an access package question.|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|The timeout duration for callback.|
|callbackUriPath|String|The URL where the reply to the call out goes.|
|customExtensionStageInstanceId|String|Unique identifier of the callout to the custom extension.|
|requestType|String|The type of the request.|
|stage|String|Indicates the stage at which the custom callout extension is executed.|
|state|String|The state in which the callout extension data is in.|
|status|String|The status of the callout request.|
|verifiedCredentialsData|[verifiedCredentialData](../resources/verifiedcredentialdata.md) collection|The details of the verifiable credential that the requestor presented, such as the issuer and claims.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](../resources/accesspackage.md)|The access package where the custom extension call out data to the Azure Logic App is being sent.|
|accessPackageCatalog|[accessPackageCatalog](../resources/accesspackagecatalog.md)|The catalog that contains the custom extension.|
|assignment|[accessPackageAssignment](../resources/accesspackageassignment.md)|The specific assignment of the access package.|
|requestor|[accessPackageSubject](../resources/accesspackagesubject.md)|The user requesting the access package assignment|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestCalloutData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestCalloutData",
  "accessPackageAssignmentRequestId": "String",
  "callbackUriPath": "String",
  "customExtensionStageInstanceId": "String",
  "stage": "String",
  "requestType": "String",
  "answers": [
    {
      "@odata.type": "microsoft.graph.accessPackageAnswerString"
    }
  ],
  "state": "String",
  "status": "String",
  "callbackConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
  },
  "verifiedCredentialsData": [
    {
      "@odata.type": "microsoft.graph.verifiedCredentialData"
    }
  ]
}
```

