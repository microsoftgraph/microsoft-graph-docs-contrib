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

requestBody := graphmodels.NewAuthorizationPolicy()
additionalData := map[string]interface{}{
	"guestUserRole" : "2af84b1e-32c8-42b7-82bc-daa82404023b", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authorizationPolicy, err := graphClient.Policies().AuthorizationPolicy().ByAuthorizationPolicyId("authorizationPolicy-id").Patch(context.Background(), requestBody, nil)


```