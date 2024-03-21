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


requestBody := graphmodelsnetworkaccess.NewFilteringPolicy()
name := "Block Social"
requestBody.SetName(&name) 


policyRule := graphmodelsnetworkaccess.NewWebCategoryFilteringRule()
name := "Block Social"
policyRule.SetName(&name) 
ruleType := graphmodels.WEBCATEGORY_NETWORKDESTINATIONTYPE 
policyRule.SetRuleType(&ruleType) 


ruleDestination := graphmodelsnetworkaccess.NewWebCategory()
name := "SocialNetworking"
ruleDestination.SetName(&name) 

destinations := []graphmodelsnetworkaccess.RuleDestinationable {
	ruleDestination,
}
policyRule.SetDestinations(destinations)

policyRules := []graphmodelsnetworkaccess.PolicyRuleable {
	policyRule,
}
requestBody.SetPolicyRules(policyRules)
action := graphmodels.BLOCK_FILTERINGPOLICYACTION 
requestBody.SetAction(&action) 
description := "Block Social Sites"
requestBody.SetDescription(&description) 

filteringPolicies, err := graphClient.NetworkAccess().FilteringPolicies().Post(context.Background(), requestBody, nil)


```