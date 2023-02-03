---
title: "logicAppTriggerEndpointConfiguration resource type"
description: "The configuration details for the logic app's endpoint that is associated with a custom access package workflow extension."
author: "currenmehta"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# logicAppTriggerEndpointConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The configuration details for the logic app's endpoint that is associated with a custom access package workflow extension. Derived from the [customExtensionEndpointConfiguration](customextensionendpointconfiguration.md) abstract type.

## Properties

|Property|Type|Description|
|:---|:---|:---| 
|logicAppWorkflowName|String|The name of the logic app.|
|resourceGroupName|String|The Azure resource group name for the logic app.|
|subscriptionId|String|Identifier of the Azure subscription for the logic app.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.logicAppTriggerEndpointConfiguration",
  "baseType": "microsoft.graph.customExtensionEndpointConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration",
  "subscriptionId": "String",
  "resourceGroupName": "String",
  "logicAppWorkflowName": "String"
}
```
