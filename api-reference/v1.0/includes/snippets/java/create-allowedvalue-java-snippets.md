---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AllowedValue allowedValue = new AllowedValue();
allowedValue.id = "Alpine";
allowedValue.isActive = false;

graphClient.directory().customSecurityAttributeDefinitions("Engineering_Project").allowedValues()
	.buildRequest()
	.post(allowedValue);

```