---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxItemCollectionResponse result = graphClient.admin().exchange().mailboxes().byMailboxId("{mailbox-id}").folders().byMailboxFolderId("{mailboxFolder-id}").items().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "createdDateTime ge 2021-08-21 and createdDateTime lt 2021-09-16";
	requestConfiguration.queryParameters.select = new String []{"type", "size"};
	requestConfiguration.queryParameters.top = 1;
});


```