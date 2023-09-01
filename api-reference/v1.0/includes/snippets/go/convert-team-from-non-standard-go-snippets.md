---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTeam()
displayName := "My Class Team"
requestBody.SetDisplayName(&displayName) 
description := "My Class Team’s Description"
requestBody.SetDescription(&description) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/teamsTemplates('educationClass')", 
}
requestBody.SetAdditionalData(additionalData)

teams, err := graphClient.Teams().Post(context.Background(), requestBody, nil)


```