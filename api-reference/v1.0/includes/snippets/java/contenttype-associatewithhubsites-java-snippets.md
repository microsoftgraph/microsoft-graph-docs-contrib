---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> hubSiteUrlsList = new LinkedList<String>();
hubSiteUrlsList.add("https://graph.microsoft.com/v1.0/sites/{site-id}");

Boolean propagateToExistingLists = false;

graphClient.sites("{site-id}").contentTypes("{contentTypeId}")
	.associateWithHubSites(ContentTypeAssociateWithHubSitesParameterSet
		.newBuilder()
		.withHubSiteUrls(hubSiteUrlsList)
		.withPropagateToExistingLists(propagateToExistingLists)
		.build())
	.buildRequest()
	.post();

```