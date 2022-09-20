---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroup()


assignedLabel := graphmodels.NewAssignedLabel()
labelId := "45cd0c48-c540-4358-ad79-a3658cdc5b88"
assignedLabel.SetLabelId(&labelId) 

assignedLabels := []graphmodels.AssignedLabelable {
	assignedLabel,

}
requestBody.SetAssignedLabels(assignedLabels)

graphClient.GroupsById("group-id").Patch(context.Background(), requestBody, nil)


```