---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.planner.rosters.item.assignsensitivitylabel.AssignSensitivityLabelPostRequestBody assignSensitivityLabelPostRequestBody = new com.microsoft.graph.beta.planner.rosters.item.assignsensitivitylabel.AssignSensitivityLabelPostRequestBody();
assignSensitivityLabelPostRequestBody.setAssignmentMethod(SensitivityLabelAssignmentMethod.Standard);
assignSensitivityLabelPostRequestBody.setSensitivityLabelId("7a4d7cc1-f72b-46a3-9831-02680eaf56f9");
var result = graphClient.planner().rosters().byPlannerRosterId("{plannerRoster-id}").assignSensitivityLabel().post(assignSensitivityLabelPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"\"");
});


```