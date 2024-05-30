---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.admin.serviceannouncement.messages.markunread.MarkUnreadPostRequestBody markUnreadPostRequestBody = new com.microsoft.graph.admin.serviceannouncement.messages.markunread.MarkUnreadPostRequestBody();
LinkedList<String> messageIds = new LinkedList<String>();
messageIds.add("MC172851");
messageIds.add("MC167983");
markUnreadPostRequestBody.setMessageIds(messageIds);
var result = graphClient.admin().serviceAnnouncement().messages().markUnread().post(markUnreadPostRequestBody);


```