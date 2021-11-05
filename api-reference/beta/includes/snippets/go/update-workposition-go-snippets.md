---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewWorkPosition()
isCurrent := true
requestBody.SetIsCurrent(&isCurrent)
options := &msgraphsdk.WorkPositionRequestBuilderPatchOptions{
	Body: requestBody,
}
workPositionId := "workPosition-id"
graphClient.Me().Profile().PositionsById(&workPositionId).Patch(options);


```