---
title: "logicAppTriggerEndpointConfiguration resource type"
description: "The configuration details for the logic app's endpoint that is associated with a custom access package workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# logicAppTriggerEndpointConfiguration resource type

Namespace: microsoft.graph

The configuration details for the logic app's endpoint that is associated with a custom access package workflow extension. Derived from the [customExtensionEndpointConfiguration](customextensionendpointconfiguration.md) abstract type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|logicAppWorkflowName|String|The name of the logic app.|
|resourceGroupName|String|The Azure resource group name for the logic app.|
|subscriptionId|String|Identifier of the Azure subscription for the logic app.|
|url|String| The URL to the logic app endpoint that will be triggered. Only required for app-only token scenarios where app is creating a [customCalloutExtension](../resources/customcalloutextension.md) without a signed-in user.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "logicAppWorkflowName": "String",
  "url": "String"
}
```
