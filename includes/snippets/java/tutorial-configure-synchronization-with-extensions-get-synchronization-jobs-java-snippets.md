---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {Token}"));

SynchronizationJobCollectionPage jobs = graphClient.servicePrincipals("60443998-8cf7-4e61-b05c-a53b658cb5e1").synchronization().jobs()
	.buildRequest( requestOptions )
	.get();

```