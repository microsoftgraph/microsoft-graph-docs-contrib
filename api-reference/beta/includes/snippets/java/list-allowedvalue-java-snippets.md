---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AllowedValueCollectionPage allowedValues = graphClient.directory().customSecurityAttributeDefinitions("Engineering_Project").allowedValues()
	.buildRequest()
	.get();

```