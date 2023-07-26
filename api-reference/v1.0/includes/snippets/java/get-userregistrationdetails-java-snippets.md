---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserRegistrationDetails userRegistrationDetails = graphClient.reports().authenticationMethods().userRegistrationDetails("86462606-fde0-4fc4-9e0c-a20eb73e54c6")
	.buildRequest()
	.get();

```