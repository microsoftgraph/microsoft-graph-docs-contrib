---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String id = "314ac440-129f-4cb3-ad61-24ef4a7de1d9";

graphClient.users("{usersId}")
	.deletePasswordSingleSignOnCredentials(UserDeletePasswordSingleSignOnCredentialsParameterSet
		.newBuilder()
		.withId(id)
		.build())
	.buildRequest()
	.post();

```