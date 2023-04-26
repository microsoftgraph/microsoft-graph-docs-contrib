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


requestBody := graphmodels.NewUser()
customSecurityAttributes := graphmodels.NewCustomSecurityAttributeValue()
additionalData := map[string]interface{}{
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
}
customSecurityAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomSecurityAttributes(customSecurityAttributes)

result, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```