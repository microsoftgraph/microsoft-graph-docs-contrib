---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnenforcedMfaAwsUserFinding unenforcedMfaAwsUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxVbmVuZm9yY2VkTWZhQXdzVXNlckZpbmRpbmcsNjUzMjU").microsoft.graph.unenforcedMfaAwsUserFinding()
	.buildRequest()
	.get();

```