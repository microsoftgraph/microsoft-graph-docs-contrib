---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.WebCategoryFilteringRule policyRule = new com.microsoft.graph.beta.models.networkaccess.WebCategoryFilteringRule();
policyRule.setOdataType("#microsoft.graph.networkaccess.webCategoryFilteringRule");
policyRule.setName("Gambling and Storage cateogries");
LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination> destinations = new LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination>();
com.microsoft.graph.beta.models.networkaccess.WebCategory ruleDestination = new com.microsoft.graph.beta.models.networkaccess.WebCategory();
ruleDestination.setOdataType("#microsoft.graph.networkaccess.webCategory");
ruleDestination.setName("Gambling");
destinations.add(ruleDestination);
com.microsoft.graph.beta.models.networkaccess.WebCategory ruleDestination1 = new com.microsoft.graph.beta.models.networkaccess.WebCategory();
ruleDestination1.setOdataType("#microsoft.graph.networkaccess.webCategory");
ruleDestination1.setName("WebRepositoryAndStorage");
destinations.add(ruleDestination1);
policyRule.setDestinations(destinations);
com.microsoft.graph.models.networkaccess.PolicyRule result = graphClient.networkAccess().filteringPolicies().byFilteringPolicyId("{filteringPolicy-id}").policyRules().byPolicyRuleId("{policyRule-id}").patch(policyRule);


```