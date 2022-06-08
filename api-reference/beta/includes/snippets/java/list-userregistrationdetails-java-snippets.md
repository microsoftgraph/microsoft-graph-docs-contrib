---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserRegistrationDetailsCollectionPage userRegistrationDetails = graphClient.reports().authenticationMethods().userRegistrationDetails()
	.buildRequest()
	.get();

```