---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationalActivity educationalActivity = new EducationalActivity();
LocalDate completionMonthYear = LocalDate.parse("Date");
educationalActivity.setCompletionMonthYear(completionMonthYear);
LocalDate endMonthYear = LocalDate.parse("Date");
educationalActivity.setEndMonthYear(endMonthYear);
InstitutionData institution = new InstitutionData();
institution.setDescription(null);
institution.setDisplayName("Colorado State University");
PhysicalAddress location = new PhysicalAddress();
location.setType(PhysicalAddressType.Business);
location.setPostOfficeBox(null);
location.setStreet("12000 E Prospect Rd");
location.setCity("Fort Collins");
location.setState("Colorado");
location.setCountryOrRegion("USA");
location.setPostalCode("80525");
institution.setLocation(location);
institution.setWebUrl("https://www.colostate.edu");
educationalActivity.setInstitution(institution);
EducationalActivityDetail program = new EducationalActivityDetail();
program.setAbbreviation("MBA");
program.setActivities(null);
program.setAwards(null);
program.setDescription("Master of Business Administration with a major in Entreprenuership and Finance.");
program.setDisplayName("Master of Business Administration");
program.setFieldsOfStudy(null);
program.setGrade("3.9");
program.setNotes(null);
program.setWebUrl("https://biz.colostate.edu");
educationalActivity.setProgram(program);
LocalDate startMonthYear = LocalDate.parse("Date");
educationalActivity.setStartMonthYear(startMonthYear);
EducationalActivity result = graphClient.me().profile().educationalActivities().post(educationalActivity);


```