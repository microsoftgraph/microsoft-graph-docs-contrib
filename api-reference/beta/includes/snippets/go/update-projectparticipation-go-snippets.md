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


requestBody := graphmodels.NewProjectParticipation()
allowedAudiences := graphmodels.ORGANIZATION_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 
client := graphmodels.NewCompanyDetail()
department := "Corporate Marketing"
client.SetDepartment(&department) 
webUrl := "https://www.contoso.com"
client.SetWebUrl(&webUrl) 
requestBody.SetClient(client)

projects, err := graphClient.Me().Profile().Projects().ByProjectParticipationId("projectParticipation-id").Patch(context.Background(), requestBody, nil)


```