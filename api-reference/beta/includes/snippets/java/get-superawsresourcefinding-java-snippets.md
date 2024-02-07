---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperAwsResourceFinding superAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("c3VwZXJSZXNvdXJjZUZpbmRpbmc0").microsoft.graph.superAwsResourceFinding()
	.buildRequest()
	.get();

```