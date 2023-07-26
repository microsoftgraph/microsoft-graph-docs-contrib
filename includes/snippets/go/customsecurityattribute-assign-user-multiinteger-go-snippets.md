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
additionalData := map[string]interface{}{
customSecurityAttributes := graphmodels.New()
engineering := graphmodels.New()
odataType := "#Collection(Int32)"
engineering.SetOdataType(&odataType) 
	costCenter := []graphmodels.Numberable {
 := int32(1001)
engineering.Set(&) 
 := int32(1003)
engineering.Set(&)
	}
	engineering.SetCostCenter(costCenter)
	customSecurityAttributes.SetEngineering(engineering)
	requestBody.SetCustomSecurityAttributes(customSecurityAttributes)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```