---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

AppRoleAssignmentCollectionPage appRoleAssignments = graphClient.users("6e7b768e-07e2-4810-8459-485f84f8f204").appRoleAssignments()
	.buildRequest( requestOptions )
	.get();

```