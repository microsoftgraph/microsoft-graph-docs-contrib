---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectionQuota connectionQuota = graphClient.external().connections("contosohr").quota()
	.buildRequest()
	.get();

```