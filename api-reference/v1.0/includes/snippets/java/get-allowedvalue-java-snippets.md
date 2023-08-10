---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AllowedValue allowedValue = graphClient.directory().customSecurityAttributeDefinitions("Engineering_Project").allowedValues("Alpine")
	.buildRequest()
	.get();

```