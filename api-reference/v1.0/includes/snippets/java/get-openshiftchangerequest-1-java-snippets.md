---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenShiftChangeRequest result = graphClient.teams().byTeamId("{team-id}").schedule().openShiftChangeRequests().byOpenShiftChangeRequestId("{openShiftChangeRequest-id}").get();


```