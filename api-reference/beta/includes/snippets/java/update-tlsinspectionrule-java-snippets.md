---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.PolicyRule policyRule = new com.microsoft.graph.beta.models.networkaccess.PolicyRule();
policyRule.setName("Contoso TLS Rule 1 - Updated");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("priority", 200);
additionalData.put("description", "My TLS rule - Updated");
additionalData.put("action", "bypass");
 settings = new ();
settings.setStatus("disabled");
additionalData.put("settings", settings);
 matchingConditions = new ();
LinkedList<Object> destinations = new LinkedList<Object>();
 property = new ();
property.setOdataType("#microsoft.graph.networkaccess.tlsInspectionFqdnDestination");
LinkedList<String> values = new LinkedList<String>();
values.add("www.contoso.test-updated.com");
values.add("*.contoso.org");
property.setValues(values);
destinations.add(property);
matchingConditions.setDestinations(destinations);
additionalData.put("matchingConditions", matchingConditions);
policyRule.setAdditionalData(additionalData);
com.microsoft.graph.models.networkaccess.PolicyRule result = graphClient.networkAccess().tlsInspectionPolicies().byTlsInspectionPolicyId("{tlsInspectionPolicy-id}").policyRules().byPolicyRuleId("{policyRule-id}").patch(policyRule);


```