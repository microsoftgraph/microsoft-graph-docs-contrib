---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamworkTag teamworkTag = new TeamworkTag();
teamworkTag.setDisplayName("Finance");
LinkedList<TeamworkTagMember> members = new LinkedList<TeamworkTagMember>();
TeamworkTagMember teamworkTagMember = new TeamworkTagMember();
teamworkTagMember.setUserId("92f6952f-61ca-4a94-8910-508a240bc167");
members.add(teamworkTagMember);
TeamworkTagMember teamworkTagMember1 = new TeamworkTagMember();
teamworkTagMember1.setUserId("085d800c-b86b-4bfc-a857-9371ad1caf29");
members.add(teamworkTagMember1);
teamworkTag.setMembers(members);
TeamworkTag result = graphClient.teams().byTeamId("{team-id}").tags().post(teamworkTag);


```