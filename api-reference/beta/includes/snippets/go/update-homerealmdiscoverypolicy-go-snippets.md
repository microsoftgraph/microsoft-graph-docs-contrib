---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewHomeRealmDiscoveryPolicy()
definition := []string {
	"{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}",
}
requestBody.SetDefinition(definition)
displayName := "Contoso default HRD Policy"
requestBody.SetDisplayName(&displayName) 

homeRealmDiscoveryPolicies, err := graphClient.Policies().HomeRealmDiscoveryPolicies().ByHomeRealmDiscoveryPolicyId("homeRealmDiscoveryPolicy-id").Patch(context.Background(), requestBody, nil)


```