---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkPosition workPosition = new WorkPosition();
PositionDetail detail = new PositionDetail();
CompanyDetail company = new CompanyDetail();
company.setDisplayName("Adventureworks Ltd.");
company.setDepartment("Consulting");
company.setOfficeLocation("AW23/344");
PhysicalAddress address = new PhysicalAddress();
address.setType(PhysicalAddressType.Business);
address.setStreet("123 Patriachy Ponds");
address.setCity("Moscow");
address.setCountryOrRegion("Russian Federation");
address.setPostalCode("RU-34621");
company.setAddress(address);
company.setWebUrl("https://www.adventureworks.com");
detail.setCompany(company);
detail.setJobTitle("Senior Product Branding Manager II");
detail.setRole("consulting");
workPosition.setDetail(detail);
workPosition.setIsCurrent(true);
WorkPosition result = graphClient.me().profile().positions().post(workPosition);


```