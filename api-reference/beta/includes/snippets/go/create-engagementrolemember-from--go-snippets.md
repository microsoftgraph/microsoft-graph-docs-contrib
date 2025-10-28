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

requestBody := graphmodels.NewEngagementRoleMember()
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
members, err := graphClient.EmployeeExperience().Roles().ByEngagementRoleId("engagementRole-id").Members().Post(context.Background(), requestBody, nil)


```