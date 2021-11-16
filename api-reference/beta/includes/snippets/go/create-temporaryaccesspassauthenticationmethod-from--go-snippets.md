---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTemporaryAccessPassAuthenticationMethod()
startDateTime, err := time.Parse(time.RFC3339, "2021-01-26T00:00:00.000Z")
requestBody.SetStartDateTime(&startDateTime)
lifetimeInMinutes := int32(60)
requestBody.SetLifetimeInMinutes(&lifetimeInMinutes)
isUsableOnce := false
requestBody.SetIsUsableOnce(&isUsableOnce)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethod",
}
options := &msgraphsdk.TemporaryAccessPassMethodsRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Authentication().TemporaryAccessPassMethods().Post(options)


```