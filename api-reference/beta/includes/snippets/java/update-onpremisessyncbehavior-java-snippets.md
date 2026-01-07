---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPremisesSyncBehavior onPremisesSyncBehavior = new OnPremisesSyncBehavior();
onPremisesSyncBehavior.setOdataType("#microsoft.graph.onPremisesSyncBehavior");
onPremisesSyncBehavior.setIsCloudManaged(true);
OnPremisesSyncBehavior result = graphClient.groups().byGroupId("{group-id}").onPremisesSyncBehavior().patch(onPremisesSyncBehavior);


```