---
title: "directoryObjectWorkflowSubject resource type"
description: "Represents a directory object as a subject for lifecycle workflow activation."
author: "masonwolff"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# directoryObjectWorkflowSubject resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [directory object](../resources/directoryobject.md), such as a [user](../resources/user.md), as a subject for lifecycle workflow activation. Use this type when a lifecycle workflow processes an existing directory object; the **directoryObject** relationship returns the specific object being processed.

Inherits from [workflowSubject](../resources/identitygovernance-workflowsubject.md).

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|directoryObject|[microsoft.graph.directoryObject](../resources/directoryobject.md)|The directory object that's being processed by the lifecycle workflow. The runtime type is the specific derived type of the object, for example, [user](../resources/user.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.directoryObjectWorkflowSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.directoryObjectWorkflowSubject"
}
```
