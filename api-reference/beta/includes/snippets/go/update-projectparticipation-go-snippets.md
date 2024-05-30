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

requestBody := graphmodels.NewProjectParticipation()
allowedAudiences := graphmodels.ORGANIZATION_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 
client := graphmodels.NewCompanyDetail()
department := "Corporate Marketing"
client.SetDepartment(&department) 
webUrl := "https://www.contoso.com"
client.SetWebUrl(&webUrl) 
requestBody.SetClient(client)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
projects, err := graphClient.Me().Profile().Projects().ByProjectParticipationId("projectParticipation-id").Patch(context.Background(), requestBody, nil)


```