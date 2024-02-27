---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamworkTagMember teamworkTagMember = new TeamworkTagMember();
teamworkTagMember.setUserId("97f62344-57dc-409c-88ad-c4af14158ff5");
TeamworkTagMember result = graphClient.teams().byTeamId("{team-id}").tags().byTeamworkTagId("{teamworkTag-id}").members().post(teamworkTagMember);


```