---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.admin().exchange().mailboxes().byMailboxId("{mailbox-id}").folders().byMailboxFolderId("{mailboxFolder-id}").items().delta().get(requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "odata.maxpagesize=2");
});


```