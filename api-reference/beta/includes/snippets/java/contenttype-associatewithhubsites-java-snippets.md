---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.sites.item.contenttypes.item.associatewithhubsites.AssociateWithHubSitesPostRequestBody associateWithHubSitesPostRequestBody = new com.microsoft.graph.beta.sites.item.contenttypes.item.associatewithhubsites.AssociateWithHubSitesPostRequestBody();
LinkedList<String> hubSiteUrls = new LinkedList<String>();
hubSiteUrls.add("https://graph.microsoft.com/beta/sites/id");
associateWithHubSitesPostRequestBody.setHubSiteUrls(hubSiteUrls);
associateWithHubSitesPostRequestBody.setPropagateToExistingLists(false);
graphClient.sites().bySiteId("{site-id}").contentTypes().byContentTypeId("{contentType-id}").associateWithHubSites().post(associateWithHubSitesPostRequestBody);


```