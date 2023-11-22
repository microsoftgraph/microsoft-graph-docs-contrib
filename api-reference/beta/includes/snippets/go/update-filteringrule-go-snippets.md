---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewPolicyRule()
name := "Gambling and Storage cateogries"
requestBody.SetName(&name) 


ruleDestination := graphmodelsnetworkaccess.NewWebCategory()
name := "Gambling"
ruleDestination.SetName(&name) 
ruleDestination1 := graphmodelsnetworkaccess.NewWebCategory()
name := "WebRepositoryAndStorage"
ruleDestination1.SetName(&name) 

destinations := []graphmodelsnetworkaccess.RuleDestinationable {
	ruleDestination,
	ruleDestination1,
}
requestBody.SetDestinations(destinations)

policyRules, err := graphClient.NetworkAccess().FilteringPolicies().ByFilteringPolicyId("filteringPolicy-id").PolicyRules().ByPolicyRuleId("policyRule-id").Patch(context.Background(), requestBody, nil)


```