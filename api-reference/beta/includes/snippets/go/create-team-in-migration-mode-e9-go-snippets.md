---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTeam()
displayName := "My Sample Team"
requestBody.SetDisplayName(&displayName) 
description := "My Sample Team’s Description"
requestBody.SetDescription(&description) 
createdDateTime , err := time.Parse(time.RFC3339, "2020-03-14T11:22:17.067Z")
requestBody.SetCreatedDateTime(&createdDateTime) 
additionalData := map[string]interface{}{
	"@microsoft.graph.teamCreationMode" : "migration", 
	"template@odata.bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
teams, err := graphClient.Teams().Post(context.Background(), requestBody, nil)


```