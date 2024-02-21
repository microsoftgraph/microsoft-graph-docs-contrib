---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Schedule schedule = new Schedule();
schedule.setEnabled(true);
schedule.setTimeZone("America/Chicago");
Schedule result = graphClient.teams().byTeamId("{team-id}").schedule().put(schedule);


```