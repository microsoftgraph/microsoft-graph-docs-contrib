---
title: printerShare resource type
description: Represents a printer that is intended to be discoverable by users and printing applications.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printerShare resource type

Namespace: microsoft.graph

Represents a printer that is intended to be discoverable by users and printing applications.

Inherits from [printerBase](../resources/printerbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List](../api/print-list-shares.md) | [printerShare](printershare.md) collection | Get a list of printer shares in the tenant. |
| [Get](../api/printershare-get.md) | [printerShare](printershare.md) | Read properties and relationships of a **printerShare** object. |
| [Update](../api/printershare-update.md) | [printerShare](printershare.md) | Update a **printerShare** object. |
| [Delete](../api/printershare-delete.md) | None | Unshare a printer. |
| [List jobs for a printer share](../api/printershare-list-jobs.md) | [printJob](printjob.md) collection | Get a list of print jobs that are queued for processing by the printerShare. |
| [Create job for a printer share](../api/printershare-post-jobs.md) | [printJob](printjob.md) | Create a new print job for the printerShare. To start printing the job, use [start](../api/printjob-start.md). |
| [List allowed users](../api/printershare-list-allowedusers.md) | [user](user.md) collection | Retrieve a list of users who have been granted access to submit print jobs to the associated printer share. |
| [Create allowed user](../api/printershare-post-allowedusers.md) | None | Grant the specified user access to submit print jobs to the associated printer share. |
| [Delete allowed user](../api/printershare-delete-alloweduser.md) | None | Revoke printer share access from the specified user. |
| [List allowed groups](../api/printershare-list-allowedgroups.md) | [group](group.md) collection | Retrieve a list of groups that have been granted access to submit print jobs to the associated printer share. |
| [Create allowed group](../api/printershare-post-allowedgroups.md) | None | Grant the specified group access to submit print jobs to the associated printer share. |
| [Delete allowed group](../api/printershare-delete-allowedgroup.md) | None | Revoke printer share access from the specified group. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowAllUsers|Boolean|If true, all users and groups will be granted access to this printer share. This supersedes the allow lists defined by the **allowedUsers** and **allowedGroups** navigation properties.|
|capabilities|[printerCapabilities](printercapabilities.md)|The capabilities of the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md).|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the printer share was created. Read-only.|
|defaults|[printerDefaults](printerdefaults.md)|The default print settings of the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md).|
|displayName|String|The name of the printer share that print clients should display. Inherited from [printerBase](../resources/printerbase.md).|
|id|String| The printerShare's identifier. Inherited from [printerBase](../resources/printerbase.md). Read-only.|
|isAcceptingJobs|Boolean|Whether the printer associated with this printer share is currently accepting new print jobs. Inherited from [printerBase](../resources/printerbase.md).|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md).|
|manufacturer|String|The manufacturer reported by the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md). Read-only.|
|model|String|The model name reported by the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md). Read-only.|
|status|[printerStatus](printerstatus.md)|The processing status, including any errors, of the printer associated with this printer share.Inherited from [printerBase](../resources/printerbase.md). Read-only.|
|viewPoint|[printerShareViewpoint](../resources/printershareviewpoint.md)|Additional data for a printer share as viewed by the signed-in user.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|printer|[printer](printer.md)|The printer that this printer share is related to. |
|allowedUsers|[user](user.md) collection|The users who have access to print using the printer.|
|allowedGroups|[group](group.md)|The groups whose users have access to print using the printer.|
|jobs|[printJob](printjob.md) collection| The list of jobs that are queued for printing by the printer associated with this printer share.|
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printerShare",
  "baseType": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerShare",
  "id": "String (identifier)",
  "displayName": "String",
  "manufacturer": "String",
  "model": "String",
  "isAcceptingJobs": "Boolean",
  "defaults": {
    "@odata.type": "microsoft.graph.printerDefaults"
  },
  "location": {
    "@odata.type": "microsoft.graph.printerLocation"
  },
  "capabilities": {
    "@odata.type": "microsoft.graph.printerCapabilities"
  },
  "status": {
    "@odata.type": "microsoft.graph.printerStatus"
  },
  "allowAllUsers": "Boolean",
  "createdDateTime": "String (timestamp)",
  "viewPoint": {"@odata.type": "microsoft.graph.printerShareViewpoint"}
}
```

