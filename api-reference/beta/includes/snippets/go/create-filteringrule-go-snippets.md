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
name := "Block Alcohol"
requestBody.SetName(&name) 
ruleType := graphmodels.WEBCATEGORY_NETWORKDESTINATIONTYPE 
requestBody.SetRuleType(&ruleType) 


ruleDestination := graphmodelsnetworkaccess.NewWebCategory()
name := "AlcoholAndTobacco"
ruleDestination.SetName(&name) 

destinations := []graphmodelsnetworkaccess.RuleDestinationable {
	ruleDestination,
}
requestBody.SetDestinations(destinations)

policyRules, err := graphClient.NetworkAccess().FilteringPolicies().ByFilteringPolicyId("filteringPolicy-id").PolicyRules().Post(context.Background(), requestBody, nil)


```