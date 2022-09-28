---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));
requestOptions.add(new QueryOption("$search", "\"displayName:Team\""));

ServicePrincipalCollectionPage servicePrincipals = graphClient.servicePrincipals()
	.buildRequest( requestOptions )
	.select("accountEnabled,displayName,publisherName,servicePrincipalType,signInAudience")
	.get();

```