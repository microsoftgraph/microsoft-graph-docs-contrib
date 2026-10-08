---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewProfilePropertySetting()
displayName := "Profile priority config"
requestBody.SetDisplayName(&displayName) 
name := "Profile priority config"
requestBody.SetName(&name) 
prioritizedSourceUrls := []string {
	"https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
}
requestBody.SetPrioritizedSourceUrls(prioritizedSourceUrls)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profilePropertySettings, err := graphClient.Admin().People().ProfilePropertySettings().Post(context.Background(), requestBody, nil)


```