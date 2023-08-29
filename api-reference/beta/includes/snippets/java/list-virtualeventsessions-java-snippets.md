---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventSessionCollectionPage sessions = graphClient.solutions().virtualEvents().webinars("f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd").sessions()
	.buildRequest()
	.get();

```