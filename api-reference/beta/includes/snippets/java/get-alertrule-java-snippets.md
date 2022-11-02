---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AlertRule alertRule = graphClient.deviceManagement().monitoring().alertRules("30070507-6514-443b-8fa5-06979cedacdf")
	.buildRequest()
	.get();

```