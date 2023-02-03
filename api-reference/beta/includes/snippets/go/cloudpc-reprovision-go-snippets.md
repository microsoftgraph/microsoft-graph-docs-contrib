---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReprovisionPostRequestBody()
userAccountType := graphmodels.ADMINISTRATOR_CLOUDPCUSERACCOUNTTYPE 
requestBody.SetUserAccountType(&userAccountType) 
osVersion := graphmodels.WINDOWS10_CLOUDPCOPERATINGSYSTEM 
requestBody.SetOsVersion(&osVersion) 

graphClient.DeviceManagement().VirtualEndpoint().CloudPCsById("cloudPC-id").Reprovision().Post(context.Background(), requestBody, nil)


```