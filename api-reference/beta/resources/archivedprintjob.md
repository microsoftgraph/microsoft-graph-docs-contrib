---
title: archivedPrintJob resource type
description: "Represents a record of a 'final state' (completed, aborted, or canceled) print job that is used for reporting purposes. This type represents an inactive print job."
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/23/2024
---

# archivedPrintJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a record of a 'final state' (completed, aborted, or canceled) print job that is used for reporting purposes. This type represents an inactive print job.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The archived print job's GUID. Read-only.|
|printerId|String|The printer ID that the job was queued for. Read-only.|
|printerName|String|The printer name that the job was queued for. Read-only.|
|processingState|printJobProcessingState|The print job's final processing state. Read-only.|
|createdDateTime|DateTimeOffset|The dateTimeOffset when the job was created. Read-only.|
|acquiredDateTime|DateTimeOffset|The dateTimeOffset when the job was acquired by the printer, if any. Read-only.|
|completionDateTime|DateTimeOffset|The dateTimeOffset when the job was completed, canceled, or aborted. Read-only.|
|acquiredByPrinter|Boolean|True if the job was acquired by a printer; false otherwise. Read-only.|
|copiesPrinted|Int32|The number of copies that were printed. Read-only.|
|pageCount|Int32|The total number of pages that were printed. Read-only.|
|blackAndWhitePageCount|Int32|The number of black and white pages that were printed. Read-only.|
|colorPageCount|Int32|The number of color pages that were printed. Read-only.|
|simplexPageCount|Int32|The number of simplex (single-sided) pages that were printed. Read-only.|
|duplexPageCount|Int32|The number of duplex (double-sided) pages that were printed. Read-only.|
|createdBy|[userIdentity](useridentity.md)|The user who created the print job. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.archivedPrintJob"
}-->

```json
{
  "@odata.type": "#microsoft.graph.archivedPrintJob",
  "id": "String",
  "printerId": "String",
  "printerName": "String",
  "processingState": "String",
  "createdDateTime": "String (timestamp)",
  "acquiredDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "acquiredByPrinter": "Boolean",
  "copiesPrinted": "Integer",
  "pageCount": "Integer",
  "blackAndWhitePageCount": "Integer",
  "colorPageCount": "Integer",
  "simplexPageCount": "Integer",
  "duplexPageCount": "Integer",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "archivedPrintJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

