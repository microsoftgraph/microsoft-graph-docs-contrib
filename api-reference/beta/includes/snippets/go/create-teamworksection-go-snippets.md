---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "\"1742515200\"")

configuration := &graphusers.ItemTeamworkSectionsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTeamworkSection()
displayName := "Project Alpha"
requestBody.SetDisplayName(&displayName) 
displayIcon := graphmodels.NewSectionDisplayIcon()
iconType := "🚀"
displayIcon.SetIconType(&iconType) 
requestBody.SetDisplayIcon(displayIcon)
sortType := graphmodels.MOSTRECENT_SECTIONSORTTYPE 
requestBody.SetSortType(&sortType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sections, err := graphClient.Users().ByUserId("user-id").Teamwork().Sections().Post(context.Background(), requestBody, configuration)


```