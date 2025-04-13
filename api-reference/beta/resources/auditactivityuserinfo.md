---
title: "auditActivityUserInfo complex type"
toc.title: "auditActivityUserInfo complex type (preview)"
description: "Represents information about the user or principal associated with an audit activity."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# auditActivityUserInfo complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information identifying the user or service principal associated with an [auditActivity](../resources/auditactivity.md) record.

## Properties

| Property | Type                                            | Description                                                                           |
| :------- | :---------------------------------------------- | :------------------------------------------------------------------------------------ |
| category | Microsoft.M365.AuditCore.auditLogUserType       | The category of the user or principal (for example, Regular, System). Defined by the originating workload's `AuditLogUserType` enum. |
| key      | String                                          | A key representing the user, often the User Principal Name (UPN) or service principal name. |
| uniqueId | String                                          | The unique identifier (for example, Object ID) of the user or service principal.             |

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type. Note the value for `category` depends on the `AuditLogUserType` enum defined by the originating workload.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditActivityUserInfo",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.auditActivityUserInfo",
  "uniqueId": "String",
  "category": "Microsoft.M365.AuditCore.auditLogUserType",
  "key": "String"
}
```
