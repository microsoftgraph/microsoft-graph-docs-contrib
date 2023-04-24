---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Teamwork/Devices/Item/UpdateSoftware"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdateSoftwarePostRequestBody()
softwareType := graphmodels.TEAMSCLIENT_TEAMWORKSOFTWARETYPE 
requestBody.SetSoftwareType(&softwareType) 
softwareVersion := "1.0.96.22"
requestBody.SetSoftwareVersion(&softwareVersion) 

graphClient.Teamwork().Devices().ByDeviceId("teamworkDevice-id").UpdateSoftware().Post(context.Background(), requestBody, nil)


```