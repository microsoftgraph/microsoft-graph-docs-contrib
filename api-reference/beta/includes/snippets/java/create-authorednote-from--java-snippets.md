---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthoredNote authoredNote = new AuthoredNote();
ItemBody content = new ItemBody();
content.setContent("Please take a look at the files tagged with follow up");
content.setContentType(BodyType.Text);
authoredNote.setContent(content);
AuthoredNote result = graphClient.privacy().subjectRightsRequests().bySubjectRightsRequestId("{subjectRightsRequest-id}").notes().post(authoredNote);


```