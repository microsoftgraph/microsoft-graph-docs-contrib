---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/CloudPCs/Item/ChangeUserAccountType"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewChangeUserAccountTypePostRequestBody()
userAccountType := graphmodels.ADMINISTRATOR_CLOUDPCUSERACCOUNTTYPE 
requestBody.SetUserAccountType(&userAccountType) 

graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ByCloudPCId("cloudPC-id").ChangeUserAccountType().Post(context.Background(), requestBody, nil)


```