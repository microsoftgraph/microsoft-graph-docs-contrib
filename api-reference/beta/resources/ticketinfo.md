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

Represents ticket information related to assignment and eligibility requests in [PIM for Azure AD roles](privilegedidentitymanagementv3-overview.md) and [PIM for Groups](privilegedidentitymanagement-for-groups-api-overview.md). Use this object to define ticket parameters for an assignment or eligibility request that's initiated by another request made in an external system.

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

