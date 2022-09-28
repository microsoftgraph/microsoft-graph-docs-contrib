---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUser()
businessPhones := []string {
	"+1 425 555 0109",

}
requestBody.SetBusinessPhones(businessPhones)
officeLocation := "18/2111"
requestBody.SetOfficeLocation(&officeLocation) 

result, err := graphClient.Me().Patch(context.Background(), requestBody, nil)


```