---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxFolderCollectionResponse result = graphClient.admin().exchange().mailboxes().byMailboxId("{mailbox-id}").folders().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "type eq 'IPF.Appointment'";
	requestConfiguration.queryParameters.select = new String []{"displayName", "type"};
	requestConfiguration.queryParameters.top = 5;
});


```