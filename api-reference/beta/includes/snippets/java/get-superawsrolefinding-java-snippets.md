---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperAwsRoleFinding superAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("c3VwZXJSb2xlRmluZGluZzI").microsoft.graph.superAwsRoleFinding()
	.buildRequest()
	.get();

```