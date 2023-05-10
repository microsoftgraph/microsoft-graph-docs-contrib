---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Me().Profile().Projects().ByProjectId("projectParticipation-id").Patch(context.Background(), requestBody, nil)


```