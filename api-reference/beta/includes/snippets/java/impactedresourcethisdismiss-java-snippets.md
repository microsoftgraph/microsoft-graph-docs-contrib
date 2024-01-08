---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String dismissReason = "Application is no longer needed.";

graphClient.directory().recommendations("0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry").impactedResources("dbd9935e-15b7-4800-9049-8d8704c23ad2")
	.dismiss(ImpactedResourceDismissParameterSet
		.newBuilder()
		.withDismissReason(dismissReason)
		.build())
	.buildRequest()
	.post();

```