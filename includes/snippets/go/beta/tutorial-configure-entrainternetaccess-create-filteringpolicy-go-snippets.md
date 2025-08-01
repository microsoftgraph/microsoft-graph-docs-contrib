---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewFilteringPolicy()
name := "AI and Bing"
requestBody.SetName(&name) 


policyRule := graphmodelsnetworkaccess.NewWebCategoryFilteringRule()
name := "AI"
policyRule.SetName(&name) 
ruleType := graphmodels.WEBCATEGORY_NETWORKDESTINATIONTYPE 
policyRule.SetRuleType(&ruleType) 


ruleDestination := graphmodelsnetworkaccess.NewWebCategory()
name := "ArtificialIntelligence"
ruleDestination.SetName(&name) 

destinations := []graphmodelsnetworkaccess.RuleDestinationable {
	ruleDestination,
}
policyRule.SetDestinations(destinations)
policyRule1 := graphmodelsnetworkaccess.NewFqdnFilteringRule()
name := "bing FQDNs"
policyRule1.SetName(&name) 
ruleType := graphmodels.FQDN_NETWORKDESTINATIONTYPE 
policyRule1.SetRuleType(&ruleType) 


ruleDestination := graphmodelsnetworkaccess.NewFqdn()
value := "bing.com"
ruleDestination.SetValue(&value) 
ruleDestination1 := graphmodelsnetworkaccess.NewFqdn()
value := "*.bing.com"
ruleDestination1.SetValue(&value) 

destinations := []graphmodelsnetworkaccess.RuleDestinationable {
	ruleDestination,
	ruleDestination1,
}
policyRule1.SetDestinations(destinations)

policyRules := []graphmodelsnetworkaccess.PolicyRuleable {
	policyRule,
	policyRule1,
}
requestBody.SetPolicyRules(policyRules)
action := graphmodels.BLOCK_FILTERINGPOLICYACTION 
requestBody.SetAction(&action) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
filteringPolicies, err := graphClient.NetworkAccess().FilteringPolicies().Post(context.Background(), requestBody, nil)


```