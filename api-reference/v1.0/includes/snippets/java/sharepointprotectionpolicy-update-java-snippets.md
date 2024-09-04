---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointProtectionPolicy sharePointProtectionPolicy = new SharePointProtectionPolicy();
sharePointProtectionPolicy.setDisplayName("SharePoint Policy - Inadvertent data loss");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> siteProtectionUnitsDelta = new LinkedList<Object>();
 property = new ();
property.setSiteId("contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c");
siteProtectionUnitsDelta.add(property);
 property1 = new ();
property1.setSiteId("contoso.sharepoint.com,d9ecf079-9b13-4376-ac5d-f242dda55626,746dbcc1-fa2b-4120-b657-2670bae5bb6f");
siteProtectionUnitsDelta.add(property1);
 property2 = new ();
property2.setSiteId("contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022");
siteProtectionUnitsDelta.add(property2);
 property3 = new ();
property3.setSiteId("contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c");
siteProtectionUnitsDelta.add(property3);
 property4 = new ();
 removed = new ();
removed.setReason("changed");
property4.setRemoved(removed);
property4.setId("99954f18-c8ec-4b62-85bf-cdf3b70b140e");
siteProtectionUnitsDelta.add(property4);
 property5 = new ();
 removed1 = new ();
removed1.setReason("changed");
property5.setRemoved(removed1);
property5.setId("4267e382-71a9-4c07-bef7-bda97e09c0d2");
siteProtectionUnitsDelta.add(property5);
 property6 = new ();
 removed2 = new ();
removed2.setReason("changed");
property6.setRemoved(removed2);
property6.setId("3667e382-71a9-4c07-bef7-bda97e09c0d2");
siteProtectionUnitsDelta.add(property6);
additionalData.put("siteProtectionUnits@delta", siteProtectionUnitsDelta);
sharePointProtectionPolicy.setAdditionalData(additionalData);
SharePointProtectionPolicy result = graphClient.solutions().backupRestore().sharePointProtectionPolicies().bySharePointProtectionPolicyId("{sharePointProtectionPolicy-id}").patch(sharePointProtectionPolicy);


```