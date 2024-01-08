---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringPolicy filteringPolicy = new FilteringPolicy();
filteringPolicy.name = "Block Social";
LinkedList<PolicyRule> policyRulesList = new LinkedList<PolicyRule>();
WebCategoryFilteringRule policyRules = new WebCategoryFilteringRule();
policyRules.name = "Block Social";
policyRules.ruleType = NetworkDestinationType.WEB_CATEGORY;
LinkedList<RuleDestination> destinationsList = new LinkedList<RuleDestination>();
WebCategory destinations = new WebCategory();
destinations.name = "SocialNetworking";
destinationsList.add(destinations);
policyRules.destinations = destinationsList;
policyRulesList.add(policyRules);
PolicyRuleCollectionResponse policyRuleCollectionResponse = new PolicyRuleCollectionResponse();
policyRuleCollectionResponse.value = policyRulesList;
PolicyRuleCollectionPage policyRuleCollectionPage = new PolicyRuleCollectionPage(policyRuleCollectionResponse, null);
filteringPolicy.policyRules = policyRuleCollectionPage;
filteringPolicy.action = FilteringPolicyAction.BLOCK;
filteringPolicy.description = "Block Social Sites";

graphClient.networkaccess().filteringPolicies()
	.buildRequest()
	.post(filteringPolicy);

```