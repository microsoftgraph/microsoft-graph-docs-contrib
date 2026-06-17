---
title: "provisioningObjectWorkflowSubject resource type"
description: "Represents a provisioning object as a subject for lifecycle workflow activation."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# provisioningObjectWorkflowSubject resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a provisioning object as a subject for lifecycle workflow activation. Use this type when activating workflows via the [activateAndWait](../api/identitygovernance-workflow-activateandwait.md) action for non-user provisioning subjects.

Inherits from [workflowSubject](../resources/identitygovernance-workflowsubject.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeSetEntries|[microsoft.graph.identityGovernance.attributeSetEntry](../resources/identitygovernance-attributesetentry.md) collection|The attribute set entries representing the subject's attributes. Each entry is a key-value pair.|
|id|String|The identifier of the provisioning object subject.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject",
  "id": "String",
  "attributeSetEntries": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.attributeSetEntry"
    }
  ]
}
```
