---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ProvisionOnDemandPostRequestBody();
$parametersSynchronizationJobApplicationParameters1 = new SynchronizationJobApplicationParameters();
$parametersSynchronizationJobApplicationParameters1->setRuleId('33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2');

$subjectsSynchronizationJobSubject1 = new SynchronizationJobSubject();
$subjectsSynchronizationJobSubject1->setObjectId('8213fd99-d6b6-417b-8e13-af6334856215');

$subjectsSynchronizationJobSubject1->setObjectTypeName('Group');

$subjectsSynchronizationJobSubject1Links = new SynchronizationLinkedObjects();
$membersSynchronizationJobSubject1 = new SynchronizationJobSubject();
$membersSynchronizationJobSubject1->setObjectId('cbc86211-6ada-4803-b73f-8039cf56d8a2');

$membersSynchronizationJobSubject1->setObjectTypeName('User');


$membersArray []= $membersSynchronizationJobSubject1;
$membersSynchronizationJobSubject2 = new SynchronizationJobSubject();
$membersSynchronizationJobSubject2->setObjectId('2bc86211-6ada-4803-b73f-8039cf56d8a2');

$membersSynchronizationJobSubject2->setObjectTypeName('User');


$membersArray []= $membersSynchronizationJobSubject2;
$subjectsSynchronizationJobSubject1Links->setMembers($membersArray);



$subjectsSynchronizationJobSubject1->setLinks($subjectsSynchronizationJobSubject1Links);

$subjectsArray []= $subjectsSynchronizationJobSubject1;
$parametersSynchronizationJobApplicationParameters1->setSubjects($subjectsArray);



$parametersArray []= $parametersSynchronizationJobApplicationParameters1;
$requestBody->setParameters($parametersArray);




$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->jobsById('synchronizationJob-id')->provisionOnDemand()->post($requestBody);


```