---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationUser();
$requestBody->setOdataType('#microsoft.graph.educationUser');

$requestBody->setPrimaryRole(new EducationUserRole('string'));

$requestBody->setMiddleName('String');

$requestBody->setExternalSource(new EducationExternalSource('string'));

$requestBody->setExternalSourceDetail('String');

$residenceAddress = new PhysicalAddress();
$residenceAddress->setOdataType('microsoft.graph.physicalAddress');


$requestBody->setResidenceAddress($residenceAddress);
$mailingAddress = new PhysicalAddress();
$mailingAddress->setOdataType('microsoft.graph.physicalAddress');


$requestBody->setMailingAddress($mailingAddress);
$student = new EducationStudent();
$student->setOdataType('microsoft.graph.educationStudent');


$requestBody->setStudent($student);
$teacher = new EducationTeacher();
$teacher->setOdataType('microsoft.graph.educationTeacher');


$requestBody->setTeacher($teacher);
$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setAccountEnabled(boolean);

$assignedLicensesAssignedLicense1 = new AssignedLicense();
$assignedLicensesAssignedLicense1->setOdataType('microsoft.graph.assignedLicense');


$assignedLicensesArray []= $assignedLicensesAssignedLicense1;
$requestBody->setAssignedLicenses($assignedLicensesArray);


$assignedPlansAssignedPlan1 = new AssignedPlan();
$assignedPlansAssignedPlan1->setOdataType('microsoft.graph.assignedPlan');


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
$passwordProfile->setOdataType('microsoft.graph.passwordProfile');


$requestBody->setPasswordProfile($passwordProfile);
$requestBody->setOfficeLocation('String');

$requestBody->setPreferredLanguage('String');

$provisionedPlansProvisionedPlan1 = new ProvisionedPlan();
$provisionedPlansProvisionedPlan1->setOdataType('microsoft.graph.provisionedPlan');


$provisionedPlansArray []= $provisionedPlansProvisionedPlan1;
$requestBody->setProvisionedPlans($provisionedPlansArray);


$requestBody->setRefreshTokensValidFromDateTime(new \DateTime('String (timestamp)'));

$requestBody->setShowInAddressList(boolean);

$requestBody->setSurname('String');

$requestBody->setUsageLocation('String');

$requestBody->setUserPrincipalName('String');

$requestBody->setUserType('String');

$onPremisesInfo = new EducationOnPremisesInfo();
$onPremisesInfo->setOdataType('microsoft.graph.educationOnPremisesInfo');


$requestBody->setOnPremisesInfo($onPremisesInfo);


$result = $graphServiceClient->education()->users()->post($requestBody);


```