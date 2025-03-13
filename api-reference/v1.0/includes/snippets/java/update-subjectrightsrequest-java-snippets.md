---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SubjectRightsRequest subjectRightsRequest = new SubjectRightsRequest();
subjectRightsRequest.setOdataType("#microsoft.graph.subjectRightsRequest");
OffsetDateTime internalDueDateTime = OffsetDateTime.parse("2021-08-30T00:00:00Z");
subjectRightsRequest.setInternalDueDateTime(internalDueDateTime);
SubjectRightsRequest result = graphClient.privacy().subjectRightsRequests().bySubjectRightsRequestId("{subjectRightsRequest-id}").patch(subjectRightsRequest);


```