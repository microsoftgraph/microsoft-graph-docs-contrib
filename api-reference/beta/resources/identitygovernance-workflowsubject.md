---
title: "workflowSubject resource type"
description: "Represents an abstract base type for subjects that can be activated in identity governance lifecycle workflows."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowSubject resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for subjects that can be activated in identity governance lifecycle workflows. A workflow subject defines the target entity for workflow execution.

This is an abstract type. It cannot be instantiated directly. Use the derived type [provisioningObjectWorkflowSubject](../resources/identitygovernance-provisioningobjectworkflowsubject.md) to create a workflow subject for provisioning scenarios.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowSubject"
}
```
