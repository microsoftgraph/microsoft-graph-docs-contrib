---
title: "ticketInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ticketInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents ticketing related metadata that can be used to correlate to a scheduled permissions request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ticketApproverIdentityId|String|Identity id of the approver.|
|ticketNumber|String|The ticket number.|
|ticketSubmitterIdentityId|String|Identity id of the submitter.|
|ticketSystem|String|The ticket system.|

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
  "ticketSystem": "String",
  "ticketSubmitterIdentityId": "String",
  "ticketApproverIdentityId": "String"
}
```

