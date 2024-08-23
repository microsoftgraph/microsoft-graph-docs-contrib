---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationUser educationUser = new EducationUser();
educationUser.setDisplayName("Dion Matheson");
educationUser.setGivenName("Dion");
educationUser.setMiddleName(null);
educationUser.setSurname("Matheson");
educationUser.setMail("DionM@contoso.com");
educationUser.setMobilePhone("+1 (253) 555-0101");
IdentitySet createdBy = new IdentitySet();
Identity user = new Identity();
user.setDisplayName("Susana Rocha");
user.setId("14012");
createdBy.setUser(user);
educationUser.setCreatedBy(createdBy);
educationUser.setExternalSource(EducationExternalSource.Sis);
PhysicalAddress mailingAddress = new PhysicalAddress();
mailingAddress.setCity("Los Angeles");
mailingAddress.setCountryOrRegion("United States");
mailingAddress.setPostalCode("98055");
mailingAddress.setState("CA");
mailingAddress.setStreet("12345 Main St.");
educationUser.setMailingAddress(mailingAddress);
educationUser.setPrimaryRole(EducationUserRole.Student);
PhysicalAddress residenceAddress = new PhysicalAddress();
residenceAddress.setCity("Los Angeles");
residenceAddress.setCountryOrRegion("United States");
residenceAddress.setPostalCode("98055");
residenceAddress.setState("CA");
residenceAddress.setStreet("12345 Main St.");
educationUser.setResidenceAddress(residenceAddress);
EducationUser result = graphClient.education().users().post(educationUser);


```