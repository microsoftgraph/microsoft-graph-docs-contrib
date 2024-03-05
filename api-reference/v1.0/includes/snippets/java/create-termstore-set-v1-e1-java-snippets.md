---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.termstore.Set set = new com.microsoft.graph.models.termstore.Set();
set.setOdataType("#microsoft.graph.termStore.set");
com.microsoft.graph.models.termstore.Group parentGroup = new com.microsoft.graph.models.termstore.Group();
parentGroup.setId("fc733b51-10f1-40fd-b784-dc6d1e42804b");
set.setParentGroup(parentGroup);
LinkedList<com.microsoft.graph.models.termstore.LocalizedName> localizedNames = new LinkedList<com.microsoft.graph.models.termstore.LocalizedName>();
com.microsoft.graph.models.termstore.LocalizedName localizedName = new com.microsoft.graph.models.termstore.LocalizedName();
localizedName.setLanguageTag("en-US");
localizedName.setName("Department");
localizedNames.add(localizedName);
set.setLocalizedNames(localizedNames);
com.microsoft.graph.models.termstore.Set result = graphClient.sites().bySiteId("{site-id}").termStore().sets().post(set);


```