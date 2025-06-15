---
title: "engagementConversationMessageAttachment resource type"
description: "Represents a Viva Engage message attachment, such as a file, web link, image, or video."
author: "aditijha4"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationMessageAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Viva Engage message attachment, such as a file, web link, image, or video.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentId|String|The unique identifier of the attachment content, for example, SharePoint file ID|
|contentType|[engagementConversationMessageAttachmentType](#engagementconversationmessageattachmenttype-values)|The type of the attachment. The possible values are: `file`, `videoFile`, `imageFile`, `message`, `webLink`, `webImage`, `webVideo`, `unknownFutureValue`.|
|contentUrl|String|The URL that points to the attachment content, for example, the URL of a SharePoint site.|
|description|String|The description of the attachment.|
|id|String|The unique identifier of the attachment.|
|name|String|The name of the attachment.|

### engagementConversationMessageAttachmentType values

| Member | Description |
|:---------------|:----------|
| file | The attachment is an uploaded file. The **contentId** should match the uploaded file ID. |
| videoFile | The attachment is an uploaded video. The **contentId** should match the uploaded file ID. |
| imageFile | The attachment is an uploaded image. The **contentId** should match the uploaded file ID. |
| message | The attachment is a link to another message. The **contentId** should match the conversation message ID.|
| webLink | The attachment is a link to a web page. The **contentUrl** should be the URL. |
| webImage | The attachment is a link to a web image. The **contentUrl** should be the URL. |
| webVideo | The attachment is a link to a web video. The **contentUrl** should be the URL. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.engagementConversationMessageAttachment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationMessageAttachment",
  "contentId": "String",
  "contentType": "String",
  "contentUrl": "String",
  "description": "String",
  "id": "String",
  "name": "String"
}
```
