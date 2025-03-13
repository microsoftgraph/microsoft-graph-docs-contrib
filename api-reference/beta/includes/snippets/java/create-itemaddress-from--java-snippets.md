---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemAddress itemAddress = new ItemAddress();
itemAddress.setDisplayName("Home");
PhysicalAddress detail = new PhysicalAddress();
detail.setType(PhysicalAddressType.Home);
detail.setPostOfficeBox(null);
detail.setStreet("221B Baker Street");
detail.setCity("London");
detail.setState(null);
detail.setCountryOrRegion("United Kingdom");
detail.setPostalCode("E14 3TD");
itemAddress.setDetail(detail);
ItemAddress result = graphClient.me().profile().addresses().post(itemAddress);


```