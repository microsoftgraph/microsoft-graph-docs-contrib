---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUserScopeTeamsAppInstallation()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a", 
}
requestBody.SetAdditionalData(additionalData)

installedApps, err := graphClient.Users().ByUserId("user-id").Teamwork().InstalledApps().Post(context.Background(), requestBody, nil)


```