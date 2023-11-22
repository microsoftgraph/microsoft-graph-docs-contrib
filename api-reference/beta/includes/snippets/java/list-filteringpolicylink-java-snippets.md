---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyLinkCollectionPage policies = graphClient.networkaccess().filteringProfiles("519085fd-efb2-437c-af22-04bff0c2b571").policies()
	.buildRequest()
	.get();

```