---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CompanySubscription companySubscription = graphClient.directory().subscriptions("f9c1ea2d-2c6e-4717-8c3b-7130812d70ba")
	.buildRequest()
	.get();

```