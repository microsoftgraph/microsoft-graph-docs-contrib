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

requestBody := graphmodels.NewUser()
customSecurityAttributes := graphmodels.NewCustomSecurityAttributeValue()
additionalData := map[string]interface{}{
engineering := graph.New()
odataType := "#Collection(Int32)"
engineering.SetOdataType(&odataType) 
	costCenter := []graph.Numberable {
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```