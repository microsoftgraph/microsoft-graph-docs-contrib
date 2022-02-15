---
title: "customExtensionHandlerInstance resource type"
description: "customExtensionHandlerInstance resource is used to record each instance of custom extension running information and its result."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionHandlerInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The customExtensionHandlerInstance resource is used to record each instance of custom extension running information and its result.

## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|Identification of the custom extension triggered at this instance.|
|externalCorrelationId|String|Logic app unique run Id.|
|stage|[microsoft.graph.accessPackageCustomExtensionStage](../resources/accesspackagecustomextensionstage.md)|Indicates at which stage of the request workflow, the custom extension runs.|
|status|[microsoft.graph.accessPackageCustomExtensionHandlerStatus](../resources/accesspackagecustomextensionhandlerstatus.md)|Status of request to custom extension.|

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
  "status": "requestReceived", 
  "externalCorrelationId": "08585600902100964604743022906CU13", 
  "customExtensionId": "e59ef33d-7bc4-4b15-8d3c-01153de8a498", 
  "stage": "assignmentRequestCreated" 
 } 
```

