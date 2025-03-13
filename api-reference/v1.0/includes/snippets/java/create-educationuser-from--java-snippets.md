---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationUser educationUser = new EducationUser();
educationUser.setOdataType("#microsoft.graph.educationUser");
educationUser.setPrimaryRole(EducationUserRole.Student);
educationUser.setMiddleName("String");
educationUser.setExternalSource(EducationExternalSource.Sis);
educationUser.setExternalSourceDetail("String");
PhysicalAddress residenceAddress = new PhysicalAddress();
residenceAddress.setOdataType("microsoft.graph.physicalAddress");
educationUser.setResidenceAddress(residenceAddress);
PhysicalAddress mailingAddress = new PhysicalAddress();
mailingAddress.setOdataType("microsoft.graph.physicalAddress");
educationUser.setMailingAddress(mailingAddress);
EducationStudent student = new EducationStudent();
student.setOdataType("microsoft.graph.educationStudent");
educationUser.setStudent(student);
EducationTeacher teacher = new EducationTeacher();
teacher.setOdataType("microsoft.graph.educationTeacher");
educationUser.setTeacher(teacher);
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
educationUser.setCreatedBy(createdBy);
educationUser.setAccountEnabled(boolean);
LinkedList<AssignedLicense> assignedLicenses = new LinkedList<AssignedLicense>();
AssignedLicense assignedLicense = new AssignedLicense();
assignedLicense.setOdataType("microsoft.graph.assignedLicense");
assignedLicenses.add(assignedLicense);
educationUser.setAssignedLicenses(assignedLicenses);
LinkedList<AssignedPlan> assignedPlans = new LinkedList<AssignedPlan>();
AssignedPlan assignedPlan = new AssignedPlan();
assignedPlan.setOdataType("microsoft.graph.assignedPlan");
assignedPlans.add(assignedPlan);
educationUser.setAssignedPlans(assignedPlans);
LinkedList<String> businessPhones = new LinkedList<String>();
businessPhones.add("String");
educationUser.setBusinessPhones(businessPhones);
educationUser.setDepartment("String");
educationUser.setDisplayName("String");
educationUser.setGivenName("String");
educationUser.setMail("String");
educationUser.setMailNickname("String");
educationUser.setMobilePhone("String");
educationUser.setPasswordPolicies("String");
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setOdataType("microsoft.graph.passwordProfile");
educationUser.setPasswordProfile(passwordProfile);
educationUser.setOfficeLocation("String");
educationUser.setPreferredLanguage("String");
LinkedList<ProvisionedPlan> provisionedPlans = new LinkedList<ProvisionedPlan>();
ProvisionedPlan provisionedPlan = new ProvisionedPlan();
provisionedPlan.setOdataType("microsoft.graph.provisionedPlan");
provisionedPlans.add(provisionedPlan);
educationUser.setProvisionedPlans(provisionedPlans);
OffsetDateTime refreshTokensValidFromDateTime = OffsetDateTime.parse("String (timestamp)");
educationUser.setRefreshTokensValidFromDateTime(refreshTokensValidFromDateTime);
educationUser.setShowInAddressList(boolean);
educationUser.setSurname("String");
educationUser.setUsageLocation("String");
educationUser.setUserPrincipalName("String");
educationUser.setUserType("String");
EducationOnPremisesInfo onPremisesInfo = new EducationOnPremisesInfo();
onPremisesInfo.setOdataType("microsoft.graph.educationOnPremisesInfo");
educationUser.setOnPremisesInfo(onPremisesInfo);
EducationUser result = graphClient.education().users().post(educationUser);


```