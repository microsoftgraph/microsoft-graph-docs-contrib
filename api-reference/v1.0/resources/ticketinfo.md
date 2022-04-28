---
title: "ticketInfo resource type"
description: "Represents ticket information related to role assignment and eligibility requests."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# ticketInfo resource type

Namespace: microsoft.graph

Represents ticket information related to role assignment and eligibility requests. Use this object to define ticket parameters for a role assignment or eligibility request is initiated by another request made in an external system.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ticketNumber|String|The ticket number.|
|ticketSystem|String|The description of the ticket system.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ticketInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ticketInfo",
  "ticketNumber": "String",
  "ticketSystem": "String"
}
```

