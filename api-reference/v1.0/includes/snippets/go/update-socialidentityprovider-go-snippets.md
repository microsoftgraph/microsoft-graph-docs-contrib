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


requestBody := graphmodels.NewIdentityProviderBase()
additionalData := map[string]interface{}{
	"clientSecret" : "1111111111111", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().IdentityProviders().ByIdentityProviderId("identityProviderBase-id").Patch(context.Background(), requestBody, nil)


```