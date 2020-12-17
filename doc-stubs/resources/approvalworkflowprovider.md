---
title: "approvalWorkflowProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# approvalWorkflowProvider resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvalWorkflowProviders](../api/approvalworkflowprovider-list.md)|[approvalWorkflowProvider](../resources/approvalworkflowprovider.md) collection|Get a list of the [approvalWorkflowProvider](../resources/approvalworkflowprovider.md) objects and their properties.|
|[Create approvalWorkflowProvider](../api/approvalworkflowprovider-post-approvalworkflowproviders.md)|[approvalWorkflowProvider](../resources/approvalworkflowprovider.md)|Create a new [approvalWorkflowProvider](../resources/approvalworkflowprovider.md) object.|
|[Get approvalWorkflowProvider](../api/approvalworkflowprovider-get.md)|[approvalWorkflowProvider](../resources/approvalworkflowprovider.md)|Read the properties and relationships of an [approvalWorkflowProvider](../resources/approvalworkflowprovider.md) object.|
|[Update approvalWorkflowProvider](../api/approvalworkflowprovider-update.md)|[approvalWorkflowProvider](../resources/approvalworkflowprovider.md)|Update the properties of an [approvalWorkflowProvider](../resources/approvalworkflowprovider.md) object.|
|[Delete approvalWorkflowProvider](../api/approvalworkflowprovider-delete.md)|None|Deletes an [approvalWorkflowProvider](../resources/approvalworkflowprovider.md) object.|
|[List businessFlows](../api/approvalworkflowprovider-list-businessflows.md)|[businessFlow](../resources/businessflow.md) collection|Get the businessFlow resources from the businessFlows navigation property.|
|[Create businessFlow](../api/approvalworkflowprovider-post-businessflows.md)|[businessFlow](../resources/businessflow.md)|Create a new businessFlow object.|
|[List businessFlowsWithRequestsAwaitingMyDecision](../api/approvalworkflowprovider-list-businessflowswithrequestsawaitingmydecision.md)|[businessFlow](../resources/businessflow.md) collection|Get the businessFlow resources from the businessFlowsWithRequestsAwaitingMyDecision navigation property.|
|[Create businessFlow](../api/approvalworkflowprovider-post-businessflowswithrequestsawaitingmydecision.md)|[businessFlow](../resources/businessflow.md)|Create a new businessFlow object.|
|[List policyTemplates](../api/approvalworkflowprovider-list-policytemplates.md)|[governancePolicyTemplate](../resources/governancepolicytemplate.md) collection|Get the governancePolicyTemplate resources from the policyTemplates navigation property.|
|[Create governancePolicyTemplate](../api/approvalworkflowprovider-post-policytemplates.md)|[governancePolicyTemplate](../resources/governancepolicytemplate.md)|Create a new governancePolicyTemplate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|businessFlows|[businessFlow](../resources/businessflow.md) collection|**TODO: Add Description**|
|businessFlowsWithRequestsAwaitingMyDecision|[businessFlow](../resources/businessflow.md) collection|**TODO: Add Description**|
|policyTemplates|[governancePolicyTemplate](../resources/governancepolicytemplate.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalWorkflowProvider",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalWorkflowProvider",
  "id": "String (identifier)",
  "displayName": "String"
}
```

