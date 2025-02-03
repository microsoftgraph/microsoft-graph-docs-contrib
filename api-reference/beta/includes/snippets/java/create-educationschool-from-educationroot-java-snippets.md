---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSchool educationSchool = new EducationSchool();
educationSchool.setDisplayName("Fabrikam High School");
educationSchool.setDescription("Magnate school for the arts. Los Angeles School District");
educationSchool.setExternalSource(EducationExternalSource.Sis);
educationSchool.setPrincipalEmail("AmyR@fabrikam.com");
educationSchool.setPrincipalName("Amy Roebuck");
educationSchool.setExternalPrincipalId("14007");
educationSchool.setHighestGrade("12");
educationSchool.setLowestGrade("9");
educationSchool.setSchoolNumber("10002");
PhysicalAddress address = new PhysicalAddress();
address.setCity("Los Angeles");
address.setCountryOrRegion("United States");
address.setPostalCode("98055");
address.setState("CA");
address.setStreet("12345 Main St.");
educationSchool.setAddress(address);
educationSchool.setExternalId("10002");
educationSchool.setPhone("+1 (253) 555-0102");
EducationSchool result = graphClient.education().schools().post(educationSchool);


```