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


requestBody := graphmodels.NewUser()
customSecurityAttributes := graphmodels.NewCustomSecurityAttributeValue()
additionalData := map[string]interface{}{
engineering := graphmodels.New()
odataType := "#Collection(String)"
engineering.SetOdataType(&odataType) 
	project := []string {
		"Baker",
		"Cascade",
	}
	engineering.SetProject(project)
	customSecurityAttributes.SetEngineering(engineering)
}
customSecurityAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomSecurityAttributes(customSecurityAttributes)

users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```