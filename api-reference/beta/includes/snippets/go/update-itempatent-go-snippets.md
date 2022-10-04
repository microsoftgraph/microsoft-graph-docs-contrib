---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewItemPatent()
number := "USPTO-3954432633"
requestBody.SetNumber(&number) 
webUrl := "https://patents.gov/3954432633"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.UsersById("user-id").Profile().PatentsById("itemPatent-id").Patch(context.Background(), requestBody, nil)


```