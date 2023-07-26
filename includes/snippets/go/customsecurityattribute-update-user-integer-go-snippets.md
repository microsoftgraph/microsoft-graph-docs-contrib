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
odataType := "#Int32"
engineering.SetOdataType(&odataType) 
numVendors := int32(8)
engineering.SetNumVendors(&numVendors) 
	customSecurityAttributes.SetEngineering(engineering)
	requestBody.SetCustomSecurityAttributes(customSecurityAttributes)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```