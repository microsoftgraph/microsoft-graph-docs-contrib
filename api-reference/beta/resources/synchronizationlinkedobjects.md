---
title: "synchronizationLinkedObjects resource type"
description: "Represents any references to be provisioned during on-demand provisioning."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# synchronizationLinkedObjects resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|manager|[synchronizationJobSubject](../resources/synchronizationjobsubject.md)|Any members of the group that you would like to provision.|
|members|[synchronizationJobSubject](../resources/synchronizationjobsubject.md) collection|Any managers of the user that you would like to provision.|
|owners|[synchronizationJobSubject](../resources/synchronizationjobsubject.md) collection|Any owners of the group you would like to provision.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationLinkedObjects"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationLinkedObjects",
  "manager": {
    "@odata.type": "microsoft.graph.synchronizationJobSubject"
  },
  "members": [
    {
      "@odata.type": "microsoft.graph.synchronizationJobSubject"
    }
  ],
  "owners": [
    {
      "@odata.type": "microsoft.graph.synchronizationJobSubject"
    }
  ]
}
```
