---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveServerlessFunctionFinding inactiveServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxJbmFjdGl2ZVNlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNTA2MjM").microsoft.graph.inactiveServerlessFunctionFinding()
	.buildRequest()
	.get();

```