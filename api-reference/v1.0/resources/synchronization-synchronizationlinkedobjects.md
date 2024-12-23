---
title: "synchronizationLinkedObjects resource type"
description: "Represents any references to be provisioned during on-demand provisioning."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# synchronizationLinkedObjects resource type

Namespace: microsoft.graph

Represents any references to be provisioned during on-demand provisioning.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|members|[synchronizationJobSubject](../resources/synchronization-synchronizationjobsubject.md) collection|All group members that you would like to provision.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationLinkedObjects"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationLinkedObjects",
  "members": [
    {
      "@odata.type": "microsoft.graph.synchronizationJobSubject"
    }
  ]
}
```
