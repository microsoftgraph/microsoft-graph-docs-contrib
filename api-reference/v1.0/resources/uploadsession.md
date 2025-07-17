---
author: spgraph-docs-team
ms.date: 09/10/2017
title: UploadSession
ms.localizationpriority: medium
description: "The UploadSession resource provides information about how to upload large files to OneDrive, OneDrive for Business, or SharePoint document libraries, or as file attachments to Outlook event and message objects."
ms.subservice: sharepoint
doc_type: resourcePageType
---

# uploadSession resource type

Namespace: microsoft.graph

The **uploadSession** resource provides information about how to upload large files to OneDrive, OneDrive for Business, or SharePoint document libraries, or to Outlook [event](event.md) and [message](message.md) items as attachments.

## Properties


| Property	     | Type              |Description
|:-------------------|:------------------|:------------------------------------
| expirationDateTime | DateTimeOffset    | The date and time in UTC that the upload session expires. The complete file must be uploaded before this expiration time is reached. Each fragment uploaded during the session extends the expiration time. |
| nextExpectedRanges | String collection | A collection of byte ranges that the server is missing for the file. These ranges are zero indexed and of the format "start-end" (for example "0-26" to indicate the first 27 bytes of the file). When uploading files as Outlook attachments, instead of a collection of ranges, this property always indicates a single value "{start}", the location in the file where the next upload should begin.|
| uploadUrl          | String            | The URL endpoint that accepts PUT requests for byte ranges of the file.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "uploadUrl", "nextExpectedRanges" ],
  "@odata.type": "microsoft.graph.uploadSession"
}-->

```json
{
  "uploadUrl": "https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337",
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["0-"]
}
```

## Related content

- [Attach large files to Outlook messages and events as attachments ](/graph/outlook-large-attachments)
- [Upload large files with an upload session](../api/driveitem-createuploadsession.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "UploadSession is used to provide information about large file uploads.",
  "section": "documentation",
  "tocPath": "Resources/UploadSession"
} -->

