---
title: "synchronizationJobApplicationParameters resource type"
description: "Represents the objects to be provisioned and the rules executed during on-demand provisioning."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# synchronizationJobApplicationParameters resource type

Namespace: microsoft.graph

Represents the objects that will be provisioned and the synchronization rules executed. The resource is primarily used for on-demand provisioning. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleId|String|The identifier of the [synchronizationRule](synchronization-synchronizationrule.md) to be applied. This rule ID is defined in the [schema for a given synchronization job or template](../api/synchronization-synchronizationschema-get.md). |
|subjects|[synchronizationJobSubject](../resources/synchronization-synchronizationjobsubject.md) collection|The identifiers of one or more objects to which a synchronizationJob is to be applied.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationJobApplicationParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationJobApplicationParameters",
  "ruleId": "String",
  "subjects": [
    {
      "@odata.type": "microsoft.graph.synchronizationJobSubject"
    }
  ]
}
```


