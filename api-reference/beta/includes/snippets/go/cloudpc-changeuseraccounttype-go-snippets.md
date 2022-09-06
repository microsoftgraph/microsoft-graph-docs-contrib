---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChangeUserAccountTypePostRequestBody()
userAccountType := graphmodels.ADMINISTRATOR_CLOUDPCUSERACCOUNTTYPE 
requestBody.SetUserAccountType(&userAccountType) 

graphClient.DeviceManagement().VirtualEndpoint().CloudPCsById("cloudPC-id").ChangeUserAccountType().Post(requestBody)


```