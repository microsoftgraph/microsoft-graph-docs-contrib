---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewReprovisionPostRequestBody()
userAccountType := graphmodels.ADMINISTRATOR_CLOUDPCUSERACCOUNTTYPE 
requestBody.SetUserAccountType(&userAccountType) 
osVersion := graphmodels.WINDOWS10_CLOUDPCOPERATINGSYSTEM 
requestBody.SetOsVersion(&osVersion) 

graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ByCloudPCId("cloudPC-id").Reprovision().Post(context.Background(), requestBody, nil)


```