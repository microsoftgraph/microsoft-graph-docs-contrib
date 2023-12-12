---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperServerlessFunctionFinding superServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("c3VwZXJTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW4z").microsoft.graph.superServerlessFunctionFinding()
	.buildRequest()
	.get();

```