---
title: printJob resource type
description: Represents a print job that has been queued for a printer.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a print job that has been queued for a printer.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/printjob-get.md) | [printJob](printjob.md) | Read properties and relationships of printJob object. |
| [Create print job](../api/printer-post-jobs.md) | [printJob](printjob.md) | Create a new print job object. |
| [Update](../api/printjob-update.md) | [printJob](printjob.md) | Update a print job object. |
| [Start](../api/printjob-start.md)|None|Start the print job.|
| [Cancel](../api/printjob-cancel.md)|None|Cancel the print job.|
| [Abort](../api/printjob-abort.md)|None|Abort the print job.|
| [Redirect](../api/printjob-redirect.md) | [printJob](printjob.md) | A print job that is queued for the destination printer. |
| [Release](../api/printjob-release.md) | [printJob](printjob.md) | Release a [printJob](../resources/printjob.md) held in the cloud for secure release to print it at the target printer. |
| [Release wait](../api/printjob-releasewait.md) | [printJob](printjob.md) collection | Get the signed-in user's [printJob](../resources/printjob.md) objects that are held in the cloud for secure release and can be released at the specified physical [printer](../resources/printer.md). |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|configuration|[printJobConfiguration](printJobConfiguration.md)|A group of settings that a printer should use to print a job.|
|createdBy|[userIdentity](useridentity.md)| Read-only. Nullable.|
|createdDateTime|DateTimeOffset|The date and time when the job was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only.|
|displayName|String|The name of the print job.|
|id|String|The ID of the print job. Read-only.|
|isFetchable|Boolean|If `true`, document can be fetched by printer.|
|redirectedFrom|String|Contains the source job URL, if the job has been redirected from another printer.|
|redirectedTo|String|Contains the destination job URL, if the job has been redirected to another printer.|
|releasedDateTime|DateTimeOffset|The date and time when the print job was released for printing. This property can be absent for jobs that aren't released. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|status|[printJobStatus](printjobstatus.md)|The status of the print job. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|documents|[printDocument](printdocument.md) collection| Read-only.|
|tasks|[printTask](printtask.md) collection|A list of [printTasks](printtask.md) that were triggered by this print job.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printJob",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "isFetchable": "Boolean",
  "redirectedFrom": "String",
  "redirectedTo": "String",
  "status": {"@odata.type": "microsoft.graph.printJobStatus"},
  "createdBy": {"@odata.type": "microsoft.graph.userIdentity"},
  "configuration": {"@odata.type": "microsoft.graph.printJobConfiguration"},
  "documents": [ {"@odata.type": "microsoft.graph.printDocument"} ],
  "releasedDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
