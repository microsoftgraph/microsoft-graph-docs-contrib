---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPlace()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.room",
	"nickname": "Conf Room",
	"building": "1",
	"label": "100",
	"capacity": ,
	"isWheelChairAccessible": false,
}
options := &msgraphsdk.PlaceRequestBuilderPatchOptions{
	Body: requestBody,
}
placeId := "place-id"
graphClient.PlacesById(&placeId).Patch(options);


```