---
title: "customExtensionHandler resource type"
description: "Defines when to execute which custom access package workflow extension."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines when to execute which custom access package workflow extension.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|stage|[microsoft.graph.accessPackageCustomExtensionStage]()|Indicates at which stage the custom action will be executed.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[microsoft.graph.customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Indicate which custom extension will be executed at this stage. Nullable. Supports $expand|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customExtensionHandler",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "customExtensionHandlers": [ 
      "stage": "assignmentRequestCreated"
      "customExtension": { 
          "@odata.type": "#microsoft.graph.customAccessPackageWorkflowExtension", 
}
```

