---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomTaskExtension customTaskExtension = graphClient.identityGovernance().lifecycleWorkflows().customTaskExtensions("ffcc4c85-5a14-448e-a390-77abf2700369")
	.buildRequest()
	.get();

```