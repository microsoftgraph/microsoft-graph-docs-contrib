---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeploymentAudience deploymentAudience = new DeploymentAudience();

graphClient.admin().windows().updates().deploymentAudiences()
	.buildRequest()
	.post(deploymentAudience);

```