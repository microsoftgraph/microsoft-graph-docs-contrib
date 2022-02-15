---
title: "logicAppTriggerEndPointConfiguration resource type"
description: "Logic app endpoint configuration type for custom access package workflow extension."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# logicAppTriggerEndPointConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Logic app endpoint configuration type for custom access package workflow extension. Derived from customExtensionClientConfiguration.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|subscriptionId|String|Identification of Azure subscription for the logic app.| 
|resourceGroupName|String|Azure resource group name for the logic app.| 
|logicAppWorkflowName|String|Logic app name.| 

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.logicAppTriggerEndpointConfiguration"
}
-->

``` json
{ 

    "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration", 
    "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
    "resourceGroupName": "resourcegroup", 
    "logicAppWorkflowName": "elm_extension_test" 

} 
```