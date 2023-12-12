---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {Token}"));

ServicePrincipalCollectionPage servicePrincipals = graphClient.servicePrincipals()
	.buildRequest( requestOptions )
	.filter("startswith(displayName, 'salesforce')")
	.select("id,appId,displayName")
	.get();

```