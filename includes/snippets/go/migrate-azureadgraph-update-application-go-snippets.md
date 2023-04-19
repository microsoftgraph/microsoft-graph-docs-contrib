---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplication()


requiredResourceAccess := graphmodels.NewRequiredResourceAccess()
resourceAppId := "00000002-0000-0000-c000-000000000000"
requiredResourceAccess.SetResourceAppId(&resourceAppId) 


resourceAccess := graphmodels.NewResourceAccess()
id := uuid.MustParse("311a71cc-e848-46a1-bdf8-97ff7156d8e6")
resourceAccess.SetId(&id) 
type := "Scope"
resourceAccess.SetType(&type) 
resourceAccess1 := graphmodels.NewResourceAccess()
id := uuid.MustParse("3afa6a7d-9b1a-42eb-948e-1650a849e176")
resourceAccess1.SetId(&id) 
type := "Role"
resourceAccess1.SetType(&type) 

resourceAccess := []graphmodels.ResourceAccessable {
	resourceAccess,
	resourceAccess1,

}
requiredResourceAccess.SetResourceAccess(resourceAccess)

requiredResourceAccess := []graphmodels.RequiredResourceAccessable {
	requiredResourceAccess,

}
requestBody.SetRequiredResourceAccess(requiredResourceAccess)

result, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```