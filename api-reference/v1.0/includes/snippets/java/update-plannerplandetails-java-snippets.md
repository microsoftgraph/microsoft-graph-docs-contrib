---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerPlanDetails plannerPlanDetails = new PlannerPlanDetails();
PlannerUserIds sharedWith = new PlannerUserIds();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("6463a5ce-2119-4198-9f2a-628761df4a62", true);
additionalData.put("d95e6152-f683-4d78-9ff5-67ad180fea4a", false);
sharedWith.setAdditionalData(additionalData);
plannerPlanDetails.setSharedWith(sharedWith);
PlannerCategoryDescriptions categoryDescriptions = new PlannerCategoryDescriptions();
categoryDescriptions.setCategory1("Indoors");
categoryDescriptions.setCategory3(null);
plannerPlanDetails.setCategoryDescriptions(categoryDescriptions);
PlannerPlanDetails result = graphClient.planner().plans().byPlannerPlanId("{plannerPlan-id}").details().patch(plannerPlanDetails, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```