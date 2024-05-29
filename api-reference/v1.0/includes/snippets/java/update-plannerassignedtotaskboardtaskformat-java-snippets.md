---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerAssignedToTaskBoardTaskFormat plannerAssignedToTaskBoardTaskFormat = new PlannerAssignedToTaskBoardTaskFormat();
PlannerOrderHintsByAssignee orderHintsByAssignee = new PlannerOrderHintsByAssignee();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("aaa27244-1db4-476a-a5cb-004607466324", "8566473P 957764Jk!");
orderHintsByAssignee.setAdditionalData(additionalData);
plannerAssignedToTaskBoardTaskFormat.setOrderHintsByAssignee(orderHintsByAssignee);
PlannerAssignedToTaskBoardTaskFormat result = graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").assignedToTaskBoardFormat().patch(plannerAssignedToTaskBoardTaskFormat, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```