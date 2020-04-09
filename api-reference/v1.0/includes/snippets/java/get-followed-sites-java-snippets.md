---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISitesCollectionPage followedSites = graphClient.me().followedSites()
    .buildRequest()
    .get();

```