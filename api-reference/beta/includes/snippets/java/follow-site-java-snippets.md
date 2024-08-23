---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.followedsites.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.beta.users.item.followedsites.add.AddPostRequestBody();
LinkedList<Site> value = new LinkedList<Site>();
Site site = new Site();
site.setId("contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740");
value.add(site);
Site site1 = new Site();
site1.setId("contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851");
value.add(site1);
addPostRequestBody.setValue(value);
var result = graphClient.users().byUserId("{user-id}").followedSites().add().post(addPostRequestBody);


```