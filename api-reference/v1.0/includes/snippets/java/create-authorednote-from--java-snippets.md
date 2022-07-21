---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthoredNote authoredNote = new AuthoredNote();
ItemBody content = new ItemBody();
content.content = "String";
content.contentType = BodyType.TEXT;
authoredNote.content = content1;

graphClient.privacy().subjectRightsRequests("{subjectRightsRequestId}").notes()
	.buildRequest()
	.post(authoredNote);

```