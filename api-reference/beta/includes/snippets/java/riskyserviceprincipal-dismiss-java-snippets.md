---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> servicePrincipalIdsList = new LinkedList<String>();
servicePrincipalIdsList.add("9089a539-a539-9089-39a5-899039a58990");

graphClient.identityProtection().riskyServicePrincipals()
	.dismiss(RiskyServicePrincipalDismissParameterSet
		.newBuilder()
		.withServicePrincipalIds(servicePrincipalIdsList)
		.build())
	.buildRequest()
	.post();

```