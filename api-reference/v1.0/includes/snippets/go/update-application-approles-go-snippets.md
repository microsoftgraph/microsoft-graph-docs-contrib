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

requestBody := graphmodels.NewApplication()


appRole := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",
	"Application",
}
appRole.SetAllowedMemberTypes(allowedMemberTypes)
description := "Survey.Read"
appRole.SetDescription(&description) 
displayName := "Survey.Read"
appRole.SetDisplayName(&displayName) 
id := uuid.MustParse("ebb7c86c-fb47-4e3f-8191-420ff1b9de4a")
appRole.SetId(&id) 
isEnabled := false
appRole.SetIsEnabled(&isEnabled) 
origin := "Application"
appRole.SetOrigin(&origin) 
value := "Survey.Read"
appRole.SetValue(&value) 

appRoles := []graphmodels.AppRoleable {
	appRole,
}
requestBody.SetAppRoles(appRoles)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```