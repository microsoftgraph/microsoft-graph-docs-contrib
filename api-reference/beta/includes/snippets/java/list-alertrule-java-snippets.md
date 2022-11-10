---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AlertRuleCollectionPage alertRules = graphClient.deviceManagement().monitoring().alertRules()
	.buildRequest()
	.get();

```