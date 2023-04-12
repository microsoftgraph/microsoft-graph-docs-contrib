---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Applications/Item/AppManagementPolicies/Ref"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.New$refDeleteRequestBody()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ApplicationsById("application-id").AppManagementPolicies().Ref().Delete(context.Background(), requestBody, nil)


```