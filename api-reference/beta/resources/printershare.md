---
title: "printerShare resource type"
description: "Represents a printer that is intended to be discoverable by users and printing applications."
author: "braedenp-msft"
ms.localizationpriority: medium
ms.subservice: "universal-print"
doc_type: resourcePageType
---

# printerShare resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a printer that is intended to be discoverable by users and printing applications.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/print-list-shares.md) | [printerShare](printershare.md) collection | Get a list of printer shares in the tenant. |
| [Get](../api/printershare-get.md) | [printerShare](printershare.md) | Read properties and relationships of a **printerShare** object. |
| [Update](../api/printershare-update.md) | [printerShare](printershare.md) | Update a **printerShare** object. |
| [Delete](../api/printershare-delete.md) | None | Unshare a printer. |
| [List jobs](../api/printershare-list-jobs.md) | [printJob](printjob.md) collection | Get a list of print jobs that are queued for processing by the printerShare. |
| [Create job for a printer share](../api/printershare-post-jobs.md) | [printJob](printjob.md) | Create a new print job for the printerShare. To start printing the job, use [start](../api/printjob-start.md). |
| [List allowed users](../api/printershare-list-allowedusers.md) | [user](user.md) collection | Retrieve a list of users who can submit print jobs to the associated printer share. |
| [Create allowed user](../api/printershare-post-allowedusers.md) | None | Grant the specified user access to submit print jobs to the associated printer share. |
| [Delete allowed user](../api/printershare-delete-alloweduser.md) | None | Revoke printer share access from the specified user. |
| [List allowed groups](../api/printershare-list-allowedgroups.md) | [group](group.md) collection | Retrieve a list of groups whose members can submit print jobs to the associated printer share. |
| [Create allowed group](../api/printershare-post-allowedgroups.md) | None | Grant the specified group access to submit print jobs to the associated printer share. |
| [Delete allowed group](../api/printershare-delete-allowedgroup.md) | None | Revoke printer share access from the specified group. |
| [List recent shares](../api/print-list-recentshares.md) | [printerShare](printershare.md) collection | Get a list of recently used **printerShares** by the signed-in user. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowAllUsers|Boolean|If true, all users and groups can access this printer share. This property supersedes the lists of allowed users and groups defined by the **allowedUsers** and **allowedGroups** navigation properties.|
|capabilities|[printerCapabilities](printercapabilities.md)|The capabilities of the printer associated with this printer share. Inherited from [printerBase](./printerbase.md).|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the printer share was created. Read-only.|
|defaults|[printerDefaults](printerdefaults.md)|The default print settings of the printer associated with this printer share. Inherited from [printerBase](./printerbase.md).|
|displayName|String|The name of the printer share that print clients should display. Inherited from [printerBase](./printerbase.md).|
|id|String| The printerShare's identifier. Read-only.|
|isAcceptingJobs|Boolean|Whether the printer associated with this printer share is currently accepting new print jobs. Inherited from [printerBase](./printerbase.md).|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the printer associated with this printer share. Inherited from [printerBase](./printerbase.md).|
|manufacturer|String|The manufacturer reported by the printer associated with this printer share. Read-only. Inherited from [printerBase](./printerbase.md).|
|model|String|The model name reported by the printer associated with this printer share. Read-only.|
|status|[printerStatus](printerstatus.md)|The processing status, including any errors, of the printer associated with this printer share. Read-only. Inherited from [printerBase](./printerbase.md).|
|viewPoint|[printerShareViewpoint](../resources/printershareviewpoint.md)|More data for a printer share as viewed by the signed-in user.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|allowedGroups|[group](group.md) collection|The groups whose users have access to print using the printer.|
|allowedUsers|[user](user.md) collection|The users who have access to print using the printer.|
|jobs|[printJob](printjob.md) collection| The list of jobs that are queued for printing by the printer associated with this printer share.|
|printer|[printer](printer.md)|The printer that this printer share is related to. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerShare",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "allowAllUsers": "Boolean",
  "capabilities": {"@odata.type": "microsoft.graph.printerCapabilities"},
  "createdDateTime": "String (timestamp)",
  "defaults": {"@odata.type": "microsoft.graph.printerDefaults"},
  "displayName": "String",
  "id": "String (identifier)",
  "isAcceptingJobs": "Boolean",
  "location": {"@odata.type": "microsoft.graph.printerLocation"},
  "manufacturer": "String",
  "model": "String",
  "status": {"@odata.type": "microsoft.graph.printerStatus"},
  "viewPoint": {"@odata.type": "microsoft.graph.printerShareViewpoint"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerShare resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


