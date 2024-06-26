---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teams.item.archive.ArchivePostRequestBody archivePostRequestBody = new com.microsoft.graph.teams.item.archive.ArchivePostRequestBody();
graphClient.teams().byTeamId("{team-id}").archive().post(archivePostRequestBody);


```