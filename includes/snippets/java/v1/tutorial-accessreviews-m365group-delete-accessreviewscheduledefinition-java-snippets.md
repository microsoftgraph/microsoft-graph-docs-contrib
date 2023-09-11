---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().accessReviews().definitions("c22ae540-b89a-4d24-bac0-4ef35e6591ea")
	.buildRequest()
	.delete();

```