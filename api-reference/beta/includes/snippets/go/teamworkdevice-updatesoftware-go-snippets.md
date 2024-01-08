---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteamwork "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphteamwork.NewUpdateSoftwarePostRequestBody()
softwareType := graphmodels.TEAMSCLIENT_TEAMWORKSOFTWARETYPE 
requestBody.SetSoftwareType(&softwareType) 
softwareVersion := "1.0.96.22"
requestBody.SetSoftwareVersion(&softwareVersion) 

graphClient.Teamwork().Devices().ByTeamworkDeviceId("teamworkDevice-id").UpdateSoftware().Post(context.Background(), requestBody, nil)


```