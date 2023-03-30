---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

ServicePrincipalCollectionWithReferencesPage appRoleAssignedResources = graphClient.me().appRoleAssignedResources()
	.buildRequest( requestOptions )
	.select("displayName,accountEnabled,servicePrincipalType,signInAudience")
	.get();

```