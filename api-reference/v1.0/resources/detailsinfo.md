---
title: "detailsInfo resource type"
description: "A property bag that can contain any information about the associated identity or system."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# detailsInfo resource type

Namespace: microsoft.graph

A property bag that can contain any information about the associated identity or system. This can include details about the property that is being provisioned or the source/target system.

## Properties
The **detailsInfo** resource is a JSON string that contains more properties such as **ApplicationId**, **ObjectId**, and **UPN**. The set of properties varies based on the type of resource that is being provisioned. [List provisioningObjectSummary](../api/provisioningobjectsummary-list.md) shows an example of this.

## Relationships
None
## JSON Representation
The following JSON representation shows the resource type.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.detailsInfo",
  "openType": true,
 "optionalProperties": [
 
 ],
}-->
``` json
{
  "@odata.type": "microsoft.graph.detailsInfo"
}
```


