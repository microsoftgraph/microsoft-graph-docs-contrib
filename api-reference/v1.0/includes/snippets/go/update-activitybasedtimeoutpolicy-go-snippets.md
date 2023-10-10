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


requestBody := graphmodels.NewActivityBasedTimeoutPolicy()
definition := []string {
	"definition-value",
}
requestBody.SetDefinition(definition)
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault) 

activityBasedTimeoutPolicies, err := graphClient.Policies().ActivityBasedTimeoutPolicies().ByActivityBasedTimeoutPolicyId("activityBasedTimeoutPolicy-id").Patch(context.Background(), requestBody, nil)


```