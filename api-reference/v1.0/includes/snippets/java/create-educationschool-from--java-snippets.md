---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSchool educationSchool = new EducationSchool();
educationSchool.setOdataType("#microsoft.graph.educationSchool");
educationSchool.setDisplayName("String");
educationSchool.setDescription("String");
educationSchool.setExternalSource(EducationExternalSource.Sis);
educationSchool.setExternalSourceDetail("String");
educationSchool.setPrincipalEmail("String");
educationSchool.setPrincipalName("String");
educationSchool.setExternalPrincipalId("String");
educationSchool.setLowestGrade("String");
educationSchool.setHighestGrade("String");
educationSchool.setSchoolNumber("String");
educationSchool.setExternalId("String");
educationSchool.setPhone("String");
educationSchool.setFax("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
educationSchool.setCreatedBy(createdBy);
PhysicalAddress address = new PhysicalAddress();
address.setOdataType("microsoft.graph.physicalAddress");
educationSchool.setAddress(address);
EducationSchool result = graphClient.education().schools().post(educationSchool);


```