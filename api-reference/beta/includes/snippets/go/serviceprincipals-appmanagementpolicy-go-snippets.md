---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/AppManagementPolicies/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppManagementPolicie()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AppManagementPolicies().ByAppManagementPolicieId("appManagementPolicy-id").Post(context.Background(), requestBody, nil)


```