---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.admin().exchange().mailboxes().byMailboxId("{mailbox-id}").folders().byMailboxFolderId("{mailboxFolder-id}").items().byMailboxItemId("{mailboxItem-id}").delete(requestConfiguration -> {
	requestConfiguration.queryParameters.disposalType = "hardDelete";
});


```