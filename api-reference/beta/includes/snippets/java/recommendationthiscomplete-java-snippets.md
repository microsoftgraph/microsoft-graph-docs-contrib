---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directory().recommendations("0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA")
	.complete()
	.buildRequest()
	.post();

```