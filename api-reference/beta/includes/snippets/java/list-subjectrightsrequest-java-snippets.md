---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubjectRightsRequestCollectionPage subjectRightsRequests = graphClient.privacy().subjectRightsRequests()
	.buildRequest()
	.get();

```