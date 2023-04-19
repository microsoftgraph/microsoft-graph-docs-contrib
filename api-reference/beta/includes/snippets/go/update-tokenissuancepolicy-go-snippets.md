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


requestBody := graphmodels.NewTokenIssuancePolicy()
definition := []string {
	"definition-value",

}
requestBody.SetDefinition(definition)
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault) 

result, err := graphClient.Policies().TokenIssuancePolicies().ByTokenIssuancePolicieId("tokenIssuancePolicy-id").Patch(context.Background(), requestBody, nil)


```