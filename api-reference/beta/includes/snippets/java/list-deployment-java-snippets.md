---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeploymentAudienceCollectionPage deploymentAudiences = graphClient.admin().windows().updates().deploymentAudiences()
	.buildRequest()
	.get();

```