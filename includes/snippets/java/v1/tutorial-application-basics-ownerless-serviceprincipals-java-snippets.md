---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

ServicePrincipalCollectionPage servicePrincipals = graphClient.servicePrincipals()
	.buildRequest( requestOptions )
	.filter("owners/$count eq 0 or owners/$count eq 1")
	.get();

```