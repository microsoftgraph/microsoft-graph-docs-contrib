---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WebCategoryFilteringRule policyRule = new WebCategoryFilteringRule();
policyRule.name = "Block Alcohol";
policyRule.ruleType = NetworkDestinationType.WEB_CATEGORY;
LinkedList<RuleDestination> destinationsList = new LinkedList<RuleDestination>();
WebCategory destinations = new WebCategory();
destinations.name = "AlcoholAndTobacco";
destinationsList.add(destinations);
policyRule.destinations = destinationsList;

graphClient.networkaccess().filteringPolicies("ac253559-37a0-4f72-b666-103420b94e38").policyRules()
	.buildRequest()
	.post(policyRule);

```