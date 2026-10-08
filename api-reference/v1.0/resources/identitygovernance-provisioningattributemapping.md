---
title: "provisioningAttributeMapping resource type"
description: "Represents execution conditions for provisioning workflows that use attribute mapping."
author: "masonwolff"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# provisioningAttributeMapping resource type

Namespace: microsoft.graph.identityGovernance

Represents execution conditions for provisioning workflows that use attribute mapping. This object is configured in the **executionConditions** property of the [workflow](../resources/identitygovernance-workflow.md), [workflowTemplate](../resources/identitygovernance-workflowtemplate.md), and [workflowVersion](../resources/identitygovernance-workflowversion.md) resources when workflows execute based on attribute-based criteria.

Inherits from [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md).

## Methods

None.

## Properties

None. This type inherits all properties from the base type [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md). For the list of available properties, see the [workflowExecutionConditions properties](../resources/identitygovernance-workflowexecutionconditions.md#properties) table.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.provisioningAttributeMapping"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.provisioningAttributeMapping"
}
```
