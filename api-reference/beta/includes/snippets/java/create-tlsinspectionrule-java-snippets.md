---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.TlsInspectionRule policyRule = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionRule();
policyRule.setOdataType("#microsoft.graph.networkaccess.tlsInspectionRule");
policyRule.setName("Contoso TLS Rule 1");
policyRule.setPriority(100L);
policyRule.setDescription("My TLS rule");
com.microsoft.graph.beta.models.networkaccess.TlsInspectionRuleSettings settings = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionRuleSettings();
settings.setStatus(com.microsoft.graph.beta.models.networkaccess.SecurityRuleStatus.Enabled);
policyRule.setSettings(settings);
com.microsoft.graph.beta.models.networkaccess.TlsInspectionMatchingConditions matchingConditions = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionMatchingConditions();
LinkedList<com.microsoft.graph.beta.models.networkaccess.TlsInspectionDestination> destinations = new LinkedList<com.microsoft.graph.beta.models.networkaccess.TlsInspectionDestination>();
com.microsoft.graph.beta.models.networkaccess.TlsInspectionFqdnDestination tlsInspectionDestination = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionFqdnDestination();
tlsInspectionDestination.setOdataType("#microsoft.graph.networkaccess.tlsInspectionFqdnDestination");
LinkedList<String> values = new LinkedList<String>();
values.add("www.contoso.test.com");
values.add("*.contoso.org");
tlsInspectionDestination.setValues(values);
destinations.add(tlsInspectionDestination);
com.microsoft.graph.beta.models.networkaccess.TlsInspectionDestination tlsInspectionDestination1 = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionDestination();
tlsInspectionDestination1.setOdataType("#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> values1 = new LinkedList<String>();
values1.add("Entertainment");
additionalData.put("values", values1);
tlsInspectionDestination1.setAdditionalData(additionalData);
destinations.add(tlsInspectionDestination1);
matchingConditions.setDestinations(destinations);
policyRule.setMatchingConditions(matchingConditions);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("action", "inspect");
policyRule.setAdditionalData(additionalData1);
com.microsoft.graph.models.networkaccess.PolicyRule result = graphClient.networkAccess().tlsInspectionPolicies().byTlsInspectionPolicyId("{tlsInspectionPolicy-id}").policyRules().post(policyRule);


```