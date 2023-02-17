---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.privacy().subjectRightsRequests("{subjectRightsRequestId}")
	.getFinalAttachment()
	.buildRequest()
	.get();

```