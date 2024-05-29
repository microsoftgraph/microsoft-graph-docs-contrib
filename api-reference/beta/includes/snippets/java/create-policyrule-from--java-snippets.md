---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.FilteringPolicy filteringPolicy = new com.microsoft.graph.beta.models.networkaccess.FilteringPolicy();
filteringPolicy.setName("Block Social");
LinkedList<com.microsoft.graph.beta.models.networkaccess.PolicyRule> policyRules = new LinkedList<com.microsoft.graph.beta.models.networkaccess.PolicyRule>();
com.microsoft.graph.beta.models.networkaccess.WebCategoryFilteringRule policyRule = new com.microsoft.graph.beta.models.networkaccess.WebCategoryFilteringRule();
policyRule.setOdataType("#microsoft.graph.networkaccess.webCategoryFilteringRule");
policyRule.setName("Block Social");
policyRule.setRuleType(com.microsoft.graph.beta.models.networkaccess.NetworkDestinationType.WebCategory);
LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination> destinations = new LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination>();
com.microsoft.graph.beta.models.networkaccess.WebCategory ruleDestination = new com.microsoft.graph.beta.models.networkaccess.WebCategory();
ruleDestination.setOdataType("#microsoft.graph.networkaccess.webCategory");
ruleDestination.setName("SocialNetworking");
destinations.add(ruleDestination);
policyRule.setDestinations(destinations);
policyRules.add(policyRule);
filteringPolicy.setPolicyRules(policyRules);
filteringPolicy.setAction(com.microsoft.graph.beta.models.networkaccess.FilteringPolicyAction.Block);
filteringPolicy.setDescription("Block Social Sites");
filteringPolicy.setOdataType("#microsoft.graph.networkaccess.filteringPolicy");
com.microsoft.graph.models.networkaccess.FilteringPolicy result = graphClient.networkAccess().filteringPolicies().post(filteringPolicy);


```