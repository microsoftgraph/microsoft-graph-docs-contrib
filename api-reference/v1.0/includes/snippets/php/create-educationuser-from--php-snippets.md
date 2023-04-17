---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationUser();
$requestBody->set@odatatype('#microsoft.graph.educationUser');

$requestBody->setPrimaryRole(new EducationUserRole('string'));

$requestBody->setMiddleName('String');

$requestBody->setExternalSource(new EducationExternalSource('string'));

$requestBody->setExternalSourceDetail('String');

$residenceAddress = new PhysicalAddress();
$residenceAddress->set@odatatype('microsoft.graph.physicalAddress');


$requestBody->setResidenceAddress($residenceAddress);
$mailingAddress = new PhysicalAddress();
$mailingAddress->set@odatatype('microsoft.graph.physicalAddress');


$requestBody->setMailingAddress($mailingAddress);
$student = new EducationStudent();
$student->set@odatatype('microsoft.graph.educationStudent');


$requestBody->setStudent($student);
$teacher = new EducationTeacher();
$teacher->set@odatatype('microsoft.graph.educationTeacher');


$requestBody->setTeacher($teacher);
$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setAccountEnabled(boolean);

$assignedLicensesAssignedLicense1 = new AssignedLicense();
$assignedLicensesAssignedLicense1->set@odatatype('microsoft.graph.assignedLicense');


$assignedLicensesArray []= $assignedLicensesAssignedLicense1;
$requestBody->setAssignedLicenses($assignedLicensesArray);


$assignedPlansAssignedPlan1 = new AssignedPlan();
$assignedPlansAssignedPlan1->set@odatatype('microsoft.graph.assignedPlan');


$assignedPlansArray []= $assignedPlansAssignedPlan1;
$requestBody->setAssignedPlans($assignedPlansArray);


$requestBody->setBusinessPhones(['String', ]);

$requestBody->setDepartment('String');

$requestBody->setDisplayName('String');

$requestBody->setGivenName('String');

$requestBody->setMail('String');

$requestBody->setMailNickname('String');

$requestBody->setMobilePhone('String');

$requestBody->setPasswordPolicies('String');

$passwordProfile = new PasswordProfile();
$passwordProfile->set@odatatype('microsoft.graph.passwordProfile');


$requestBody->setPasswordProfile($passwordProfile);
$requestBody->setOfficeLocation('String');

$requestBody->setPreferredLanguage('String');

$provisionedPlansProvisionedPlan1 = new ProvisionedPlan();
$provisionedPlansProvisionedPlan1->set@odatatype('microsoft.graph.provisionedPlan');


$provisionedPlansArray []= $provisionedPlansProvisionedPlan1;
$requestBody->setProvisionedPlans($provisionedPlansArray);


$requestBody->setRefreshTokensValidFromDateTime(new DateTime('String (timestamp)'));

$requestBody->setShowInAddressList(boolean);

$requestBody->setSurname('String');

$requestBody->setUsageLocation('String');

$requestBody->setUserPrincipalName('String');

$requestBody->setUserType('String');

$onPremisesInfo = new EducationOnPremisesInfo();
$onPremisesInfo->set@odatatype('microsoft.graph.educationOnPremisesInfo');


$requestBody->setOnPremisesInfo($onPremisesInfo);


$result = $graphServiceClient->education()->users()->post($requestBody);


```