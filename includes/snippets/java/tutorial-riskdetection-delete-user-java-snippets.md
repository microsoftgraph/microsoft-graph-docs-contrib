---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("4628e7df-dff3-407c-a08f-75f08c0806dc")
	.buildRequest()
	.delete();

```