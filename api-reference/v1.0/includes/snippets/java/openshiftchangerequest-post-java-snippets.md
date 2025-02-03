---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenShiftChangeRequest openShiftChangeRequest = new OpenShiftChangeRequest();
openShiftChangeRequest.setSenderMessage("Can I take this shift?");
openShiftChangeRequest.setOpenShiftId("577b75d2-a927-48c0-a5d1-dc984894e7b8");
OpenShiftChangeRequest result = graphClient.teams().byTeamId("{team-id}").schedule().openShiftChangeRequests().post(openShiftChangeRequest, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
});


```