---
title: "engagementConversationMessageAttachment resource type"
description: "Represents a file or link attached to a Viva Engage message*"
author: "aditijha4"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationMessageAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Viva Engage message attachment, such as a file, weblink, image, video, etc.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentId|String|The unique identity of the attachment content, for example, SharePoint file ID|
|contentType|[engagementConversationMessageAttachmentType](#engagementconversationmessageattachmenttype-values)|The type of the attachment. The possible values are: `file`, `videoFile`, `imageFile`, `message`, `webLink`, `webImage`, `webVideo`, `unknownFutureValue`.|
|contentUrl|String|The url pointing to the attachment content, for example, url of a SharePoint site|
|description|String|The description of the attachment|
|id|String|The unique identity of the attachment.|
|name|String|The name of the attachment.|
|creationMode|[engagementCreationMode](../resources/engagementCreationMode.md)|Indicates how the attachment was created. The possible values are: `none`, `migration`, `unknownFutureValue`.|

### engagementConversationMessageAttachmentType values
| Member | Description |
|:---------------|:----------|
| file | Attachment is an uploaded file. The content ID should match the uploaded file ID.  |
| videoFile | Attachment is an uploaded video. The content ID should match the uploaded file ID. |
| imageFile | Attachment is an uploaded image. The content ID should match the uploaded file ID. |
| message | Attachment is a link to another message. The content ID should match the conversation message ID.|
| webLink | Attachment is a link to a web page. The contentUrl should be the URL.  |
| webImage | Attachment is a link to a web image. The contentUrl should be the URL. |
| webVideo | Attachment is a link to a web video. The contentUrl should be the URL. |
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
  "id": "String",
  "contentType": "String",
  "contentUrl": "String",
  "contentId": "String",
  "name": "String",
  "description": "String"
}
```

