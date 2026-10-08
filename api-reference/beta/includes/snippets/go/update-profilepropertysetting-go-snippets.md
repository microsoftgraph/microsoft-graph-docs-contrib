---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewProfilePropertySetting()
prioritizedSourceUrls := []string {
	"https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
	"https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr2')",
}
requestBody.SetPrioritizedSourceUrls(prioritizedSourceUrls)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profilePropertySettings, err := graphClient.Admin().People().ProfilePropertySettings().ByProfilePropertySettingId("profilePropertySetting-id").Patch(context.Background(), requestBody, nil)


```