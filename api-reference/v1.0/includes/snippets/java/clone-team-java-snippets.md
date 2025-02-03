---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teams.item.clone.ClonePostRequestBody clonePostRequestBody = new com.microsoft.graph.teams.item.clone.ClonePostRequestBody();
clonePostRequestBody.setDisplayName("Library Assist");
clonePostRequestBody.setDescription("Self help community for library");
clonePostRequestBody.setMailNickname("libassist");
clonePostRequestBody.setPartsToClone(EnumSet.of(ClonableTeamParts.Apps, ClonableTeamParts.Tabs, ClonableTeamParts.Settings, ClonableTeamParts.Channels, ClonableTeamParts.Members));
clonePostRequestBody.setVisibility(TeamVisibilityType.Public);
graphClient.teams().byTeamId("{team-id}").clone().post(clonePostRequestBody);


```