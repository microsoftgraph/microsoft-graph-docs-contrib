---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Attachment attachment = new Attachment();
attachment.setOdataType("#Microsoft.OutlookServices.ItemAttachment");
attachment.setName("name-value");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
Message item = new Message();
item.setOdataType("microsoft.graph.message");
additionalData.put("item", item);
attachment.setAdditionalData(additionalData);
Attachment result = graphClient.me().events().byEventId("{event-id}").attachments().post(attachment);


```