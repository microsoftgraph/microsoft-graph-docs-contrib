---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<PolicyRuleDelta> rulesList = new LinkedList<PolicyRuleDelta>();
PolicyRuleDelta rules = new PolicyRuleDelta();
rules.ruleId = "e296c914-768c-4ce9-a279-e4b6145a8a4b";
rules.action = ForwardingRuleAction.FORWARD;

rulesList.add(rules);

graphClient.networkAccess().forwardingPolicies("{id}")
	.updatePolicyRules(ForwardingPolicyUpdatePolicyRulesParameterSet
		.newBuilder()
		.withRules(rulesList)
		.build())
	.buildRequest()
	.post();

```