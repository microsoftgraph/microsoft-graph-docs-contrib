---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.PolicyRule policyRule = new com.microsoft.graph.beta.models.networkaccess.PolicyRule();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("description", "Updated rule description");
additionalData.put("priority", 200);
policyRule.setAdditionalData(additionalData);
com.microsoft.graph.models.networkaccess.PolicyRule result = graphClient.networkAccess().cloudFirewallPolicies().byCloudFirewallPolicyId("{cloudFirewallPolicy-id}").policyRules().byPolicyRuleId("{policyRule-id}").patch(policyRule);


```