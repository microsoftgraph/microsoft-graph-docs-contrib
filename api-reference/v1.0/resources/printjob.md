---
title: printJob resource type
description: Represents a print job that has been queued for a printer.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printJob resource type

Namespace: microsoft.graph

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


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[printJobConfiguration](printJobConfiguration.md)|A group of settings that a printer should use to print a job.|
|createdBy|[userIdentity](useridentity.md)| Read-only. Nullable.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the job was created. Read-only.|
|id|String|The ID of the print job. Read-only.|
|isFetchable|Edm.Boolean|If true, document can be fetched by printer.|
|redirectedFrom|Edm.String|Contains the source job URL, if the job has been redirected from another printer.|
|redirectedTo|Edm.String|Contains the destination job URL, if the job has been redirected to another printer.|
|status|[printJobStatus](printjobstatus.md)|The status of the print job. Read-only.|
|errorCode|Int32|The error code of the print job. Read-only.|
|acknowledgedDateTime|DateTimeOffset|The dateTimeOffset when the job was acknowledged. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|documents|[printDocument](printdocument.md) collection| Read-only.|
|tasks|[printTask](printtask.md) collection|A list of [printTasks](printtask.md) that were triggered by this print job.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printJob",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "status": {
    "@odata.type": "microsoft.graph.printJobStatus"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "configuration": {
    "@odata.type": "microsoft.graph.printJobConfiguration"
  },
  "redirectedTo": "String",
  "redirectedFrom": "String",
  "isFetchable": "Boolean"
}
```

