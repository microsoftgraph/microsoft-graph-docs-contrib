---
author: spgraph-docs-team
description: "Represents information for an iterative process to upload large files to OneDrive, OneDrive for work or school, or SharePoint document libraries, or as file attachments to Outlook event and message objects."
title: "uploadSession resource type"
ms.localizationpriority: medium
doc_type: "resourcePageType"
ms.subservice: "non-product-specific"
ms.date: 07/23/2024
---
# uploadSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information for an iterative process to upload large files to:

- OneDrive
- OneDrive for work or school
- SharePoint document libraries
- Outlook [event](event.md) and [message](message.md) items as attachments
- Universal Print [printDocument](printdocument.md) items

## Properties


| Property         | Type              |Description
|:-------------------|:------------------|:------------------------------------
| expirationDateTime | DateTimeOffset    | The date and time in UTC that the upload session expires. The complete file must be uploaded before this expiration time is reached. Each fragment uploaded during the session extends the expiration time.
| nextExpectedRanges | String collection | When uploading files to document libraries, this property is a collection of byte ranges that the server is missing for the file. These ranges are zero-indexed and of the format, "{start}-{end}" (for example "0-26" to indicate the first 27 bytes of the file). When uploading files as Outlook attachments, instead of a collection of ranges, this property always indicates a single value "{start}", the location in the file where the next upload should begin.
| uploadUrl          | String            | The URL endpoint that accepts PUT requests for byte ranges of the file.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "uploadUrl", "nextExpectedRanges" ],
  "@odata.type": "microsoft.graph.uploadSession",
  "baseType": null
}-->

```json
{
  "uploadUrl": "String",
  "expirationDateTime": "String (timestamp)",
  "nextExpectedRanges": ["String"]
}
```

## Related content

- [Attach large files to Outlook messages and events as attachments ](/graph/outlook-large-attachments)
- [Upload large files with an upload session](../api/driveitem-createuploadsession.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "UploadSession is used to provide information about large file uploads.",
  "section": "documentation",
  "tocPath": "Resources/UploadSession",
  "suppressions": []
}
-->


