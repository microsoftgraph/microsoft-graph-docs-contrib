---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubjectRightsRequest subjectRightsRequest = new SubjectRightsRequest();
subjectRightsRequest.internalDueDateTime = OffsetDateTimeSerializer.deserialize("2021-08-30T00:00:00Z");

graphClient.privacy().subjectRightsRequests("{subjectRightsRequestId}")
	.buildRequest()
	.patch(subjectRightsRequest);

```