---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerUser plannerUser = new PlannerUser();
PlannerFavoritePlanReferenceCollection favoritePlanReferences = new PlannerFavoritePlanReferenceCollection();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
PlannerFavoritePlanReference jd8S5gOaFk2S8aWCIAJz42QAAxtD = new PlannerFavoritePlanReference();
jd8S5gOaFk2S8aWCIAJz42QAAxtD.setOdataType("#microsoft.graph.plannerFavoritePlanReference");
jd8S5gOaFk2S8aWCIAJz42QAAxtD.setOrderHint(" !");
jd8S5gOaFk2S8aWCIAJz42QAAxtD.setPlanTitle("Next Release Discussion");
additionalData.put("jd8S5gOaFk2S8aWCIAJz42QAAxtD", jd8S5gOaFk2S8aWCIAJz42QAAxtD);
additionalData.put("7oTB5aMIAE2rVo-1N-L7RmQAGX2q", null);
favoritePlanReferences.setAdditionalData(additionalData);
plannerUser.setFavoritePlanReferences(favoritePlanReferences);
PlannerRecentPlanReferenceCollection recentPlanReferences = new PlannerRecentPlanReferenceCollection();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
PlannerRecentPlanReference jd8S5gOaFk2S8aWCIAJz42QAAxtD1 = new PlannerRecentPlanReference();
jd8S5gOaFk2S8aWCIAJz42QAAxtD1.setOdataType("#microsoft.graph.plannerRecentPlanReference");
OffsetDateTime lastAccessedDateTime = OffsetDateTime.parse("2018-01-02T22:49:46.155Z");
jd8S5gOaFk2S8aWCIAJz42QAAxtD1.setLastAccessedDateTime(lastAccessedDateTime);
jd8S5gOaFk2S8aWCIAJz42QAAxtD1.setPlanTitle("Next Release Discussion");
additionalData1.put("jd8S5gOaFk2S8aWCIAJz42QAAxtD", jd8S5gOaFk2S8aWCIAJz42QAAxtD1);
recentPlanReferences.setAdditionalData(additionalData1);
plannerUser.setRecentPlanReferences(recentPlanReferences);
PlannerUser result = graphClient.me().planner().patch(plannerUser, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=\"");
});


```