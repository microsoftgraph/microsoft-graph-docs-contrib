---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTaskDetails plannerTaskDetails = new PlannerTaskDetails();
plannerTaskDetails.setPreviewType(PlannerPreviewType.NoPreview);
PlannerExternalReferences references = new PlannerExternalReferences();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
PlannerExternalReference http3ADeveloper2Emicrosoft2Ecom = new PlannerExternalReference();
http3ADeveloper2Emicrosoft2Ecom.setOdataType("microsoft.graph.plannerExternalReference");
http3ADeveloper2Emicrosoft2Ecom.setAlias("Documentation");
http3ADeveloper2Emicrosoft2Ecom.setPreviewPriority(" !");
http3ADeveloper2Emicrosoft2Ecom.setType("Other");
additionalData.put("http%3A//developer%2Emicrosoft%2Ecom", http3ADeveloper2Emicrosoft2Ecom);
PlannerExternalReference https3ADeveloper2Emicrosoft2EcomGraphGraphExplorer = new PlannerExternalReference();
https3ADeveloper2Emicrosoft2EcomGraphGraphExplorer.setOdataType("microsoft.graph.plannerExternalReference");
https3ADeveloper2Emicrosoft2EcomGraphGraphExplorer.setPreviewPriority("  !!");
additionalData.put("https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer", https3ADeveloper2Emicrosoft2EcomGraphGraphExplorer);
additionalData.put("http%3A//www%2Ebing%2Ecom", null);
references.setAdditionalData(additionalData);
plannerTaskDetails.setReferences(references);
PlannerChecklistItems checklist = new PlannerChecklistItems();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
PlannerChecklistItem 95e270746c4a447aAa249d718a0b86fa = new PlannerChecklistItem();
95e270746c4a447aAa249d718a0b86fa.setOdataType("microsoft.graph.plannerChecklistItem");
95e270746c4a447aAa249d718a0b86fa.setTitle("Update task details");
95e270746c4a447aAa249d718a0b86fa.setIsChecked(true);
additionalData1.put("95e27074-6c4a-447a-aa24-9d718a0b86fa", 95e270746c4a447aAa249d718a0b86fa);
PlannerChecklistItem d280ed1a9f6b4f9cA962Fb4d00dc50ff = new PlannerChecklistItem();
d280ed1a9f6b4f9cA962Fb4d00dc50ff.setOdataType("microsoft.graph.plannerChecklistItem");
d280ed1a9f6b4f9cA962Fb4d00dc50ff.setIsChecked(true);
additionalData1.put("d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff", d280ed1a9f6b4f9cA962Fb4d00dc50ff);
additionalData1.put("a93c93c5-10a6-4167-9551-8bafa09967a7", null);
checklist.setAdditionalData(additionalData1);
plannerTaskDetails.setChecklist(checklist);
plannerTaskDetails.setDescription("Updated task details properties:\nUpdated checklist:Sub items\nUpdated references:Related links");
PlannerTaskDetails result = graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").details().patch(plannerTaskDetails, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```