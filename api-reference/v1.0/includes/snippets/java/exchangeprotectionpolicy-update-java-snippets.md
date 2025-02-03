---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExchangeProtectionPolicy exchangeProtectionPolicy = new ExchangeProtectionPolicy();
exchangeProtectionPolicy.setDisplayName("Exchange Policy - Inadvertent data loss");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> mailboxProtectionUnitsDelta = new LinkedList<Object>();
 property = new ();
property.setDirectoryObjectId("1b014d8c-71fe-4d00-a01a-31850bc5b32c");
mailboxProtectionUnitsDelta.add(property);
 property1 = new ();
property1.setDirectoryObjectId("2b014d8c-71fe-4d00-a01a-31850bc5b32c");
mailboxProtectionUnitsDelta.add(property1);
 property2 = new ();
 removed = new ();
removed.setReason("changed");
property2.setRemoved(removed);
property2.setId("99954f18-c8ec-4b62-85bf-cdf3b70b140e");
mailboxProtectionUnitsDelta.add(property2);
 property3 = new ();
 removed1 = new ();
removed1.setReason("changed");
property3.setRemoved(removed1);
property3.setId("4267e382-71a9-4c07-bef7-bda97e09c0d2");
mailboxProtectionUnitsDelta.add(property3);
additionalData.put("mailboxProtectionUnits@delta", mailboxProtectionUnitsDelta);
exchangeProtectionPolicy.setAdditionalData(additionalData);
ExchangeProtectionPolicy result = graphClient.solutions().backupRestore().exchangeProtectionPolicies().byExchangeProtectionPolicyId("{exchangeProtectionPolicy-id}").patch(exchangeProtectionPolicy, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer <Access-Token>");
});


```