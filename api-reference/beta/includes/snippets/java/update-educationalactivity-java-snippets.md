---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationalActivity educationalActivity = new EducationalActivity();
InstitutionData institution = new InstitutionData();
PhysicalAddress location = new PhysicalAddress();
location.setType(PhysicalAddressType.Business);
location.setPostOfficeBox(null);
location.setStreet("12000 E Prospect Rd");
location.setCity("Fort Collins");
location.setState("Colorado");
location.setCountryOrRegion("USA");
location.setPostalCode("80525");
institution.setLocation(location);
educationalActivity.setInstitution(institution);
EducationalActivity result = graphClient.me().profile().educationalActivities().byEducationalActivityId("{educationalActivity-id}").patch(educationalActivity);


```