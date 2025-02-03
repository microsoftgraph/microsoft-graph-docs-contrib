---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Attachment attachment = new Attachment();
attachment.setOdataType("#Microsoft.OutlookServices.FileAttachment");
attachment.setName("name-value");
attachment.setContentType("contentType-value");
attachment.setIsInline(false);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("contentLocation", "contentLocation-value");
additionalData.put("contentBytes", "contentBytes-value");
attachment.setAdditionalData(additionalData);
Attachment result = graphClient.me().messages().byMessageId("{message-id}").attachments().post(attachment);


```