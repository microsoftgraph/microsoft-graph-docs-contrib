---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteamwork "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphteamwork.NewUpdateSoftwarePostRequestBody()
softwareType := graphmodels.TEAMSCLIENT_TEAMWORKSOFTWARETYPE 
requestBody.SetSoftwareType(&softwareType) 
softwareVersion := "1.0.96.22"
requestBody.SetSoftwareVersion(&softwareVersion) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Teamwork().Devices().ByTeamworkDeviceId("teamworkDevice-id").UpdateSoftware().Post(context.Background(), requestBody, nil)


```