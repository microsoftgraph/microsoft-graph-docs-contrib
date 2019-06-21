---
title: "detailsInfo resource type"
description: "Property bag that contains any additional information about the associated identity or system."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "ms.prod"
doc_type: "resourcePageType"
---

# detailsInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Property bag that contains any additional information about the associated identity or system. This can include additional details about the property that is being provisioned or the source/target system.

## Properties
The detailsInfo resource is a property bag that contains additional properties such as the ApplicationId, ObjectId, UPN, etc. The set of properties varies by resource type. 

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.Json"
}-->
``` json
{
  "Directory": "AppName",
  "ApplicationId": "18d14464-9snc-428c-aba4-3b673gbd5600"
}
```
