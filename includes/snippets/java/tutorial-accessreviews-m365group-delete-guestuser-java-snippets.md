---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("c9a5aff7-9298-4d71-adab-0a222e0a05e4")
	.buildRequest()
	.delete();

```