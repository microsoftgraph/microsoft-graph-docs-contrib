---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerRosterMember plannerRosterMember = new PlannerRosterMember();
plannerRosterMember.setOdataType("#microsoft.graph.plannerRosterMember");
plannerRosterMember.setUserId("String");
PlannerRosterMember result = graphClient.planner().rosters().byPlannerRosterId("{plannerRoster-id}").members().post(plannerRosterMember);


```