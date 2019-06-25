---
title: "detailsInfo resource type"
description: "Property bag that contains any additional information about the associated identity or system."
localization_priority: Normal
author: "davidmu1"
ms.prod: "ms.prod"
doc_type: "resourcePageType"
---

# detailsInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Property bag that contains any additional information about the associated identity or system. This can include additional details about the property that is being provisioned or the source/target system.

## Properties
The detailsInfo resource is a JSON string that contains additional properties such as ApplicationId, ObjectId, and UPN. The set of properties varies based on the type of resource that is being provisioned. [List provisioningObjectSummary](../api/provisioningobjectsummary-list.md) shows an example of this.

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.detailsInfo"
}-->
``` json
{
  "@odata.type": "microsoft.graph.detailsInfo"
}
```
