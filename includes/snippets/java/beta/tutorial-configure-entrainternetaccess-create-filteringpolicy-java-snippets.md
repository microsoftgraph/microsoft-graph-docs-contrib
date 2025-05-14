---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.FilteringPolicy filteringPolicy = new com.microsoft.graph.beta.models.networkaccess.FilteringPolicy();
filteringPolicy.setName("AI and Bing");
LinkedList<com.microsoft.graph.beta.models.networkaccess.PolicyRule> policyRules = new LinkedList<com.microsoft.graph.beta.models.networkaccess.PolicyRule>();
com.microsoft.graph.beta.models.networkaccess.WebCategoryFilteringRule policyRule = new com.microsoft.graph.beta.models.networkaccess.WebCategoryFilteringRule();
policyRule.setOdataType("#microsoft.graph.networkaccess.webCategoryFilteringRule");
policyRule.setName("AI");
policyRule.setRuleType(com.microsoft.graph.beta.models.networkaccess.NetworkDestinationType.WebCategory);
LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination> destinations = new LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination>();
com.microsoft.graph.beta.models.networkaccess.WebCategory ruleDestination = new com.microsoft.graph.beta.models.networkaccess.WebCategory();
ruleDestination.setOdataType("#microsoft.graph.networkaccess.webCategory");
ruleDestination.setName("ArtificialIntelligence");
destinations.add(ruleDestination);
policyRule.setDestinations(destinations);
policyRules.add(policyRule);
com.microsoft.graph.beta.models.networkaccess.FqdnFilteringRule policyRule1 = new com.microsoft.graph.beta.models.networkaccess.FqdnFilteringRule();
policyRule1.setOdataType("#microsoft.graph.networkaccess.fqdnFilteringRule");
policyRule1.setName("bing FQDNs");
policyRule1.setRuleType(com.microsoft.graph.beta.models.networkaccess.NetworkDestinationType.Fqdn);
LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination> destinations1 = new LinkedList<com.microsoft.graph.beta.models.networkaccess.RuleDestination>();
com.microsoft.graph.beta.models.networkaccess.Fqdn ruleDestination1 = new com.microsoft.graph.beta.models.networkaccess.Fqdn();
ruleDestination1.setOdataType("#microsoft.graph.networkaccess.fqdn");
ruleDestination1.setValue("bing.com");
destinations1.add(ruleDestination1);
com.microsoft.graph.beta.models.networkaccess.Fqdn ruleDestination2 = new com.microsoft.graph.beta.models.networkaccess.Fqdn();
ruleDestination2.setOdataType("#microsoft.graph.networkaccess.fqdn");
ruleDestination2.setValue("*.bing.com");
destinations1.add(ruleDestination2);
policyRule1.setDestinations(destinations1);
policyRules.add(policyRule1);
filteringPolicy.setPolicyRules(policyRules);
filteringPolicy.setAction(com.microsoft.graph.beta.models.networkaccess.FilteringPolicyAction.Block);
com.microsoft.graph.models.networkaccess.FilteringPolicy result = graphClient.networkAccess().filteringPolicies().post(filteringPolicy);


```