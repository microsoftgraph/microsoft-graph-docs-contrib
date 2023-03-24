---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPlace()
additionalData := map[string]interface{}{
	"nickname" : "Conf Room", 
	"building" : "1", 
	"label" : "100", 
	"capacity" : int32(50) , 
	isWheelChairAccessible := false
requestBody.SetIsWheelChairAccessible(&isWheelChairAccessible) 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.PlacesById("place-id").Patch(context.Background(), requestBody, nil)


```