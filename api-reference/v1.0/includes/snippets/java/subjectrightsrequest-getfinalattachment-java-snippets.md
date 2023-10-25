---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.privacy().subjectRightsRequests("4ef5e3e6-545b-4b5f-a8b4-ff4f9980d7a9")
	.getFinalAttachment()
	.buildRequest()
	.get();

```