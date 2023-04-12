---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ProvisionOnDemandPostRequestBody();
$parametersSynchronizationJobApplicationParameters1 = new SynchronizationJobApplicationParameters();
$subjectsSynchronizationJobSubject1 = new SynchronizationJobSubject();
$subjectsSynchronizationJobSubject1->setObjectId('9bb0f679-a883-4a6f-8260-35b491b8b8c8');

$subjectsSynchronizationJobSubject1->setObjectTypeName('User');


$subjectsArray []= $subjectsSynchronizationJobSubject1;
$parametersSynchronizationJobApplicationParameters1->setSubjects($subjectsArray);


$parametersSynchronizationJobApplicationParameters1->setRuleId('ea807875-5618-4f0a-9125-0b46a05298ca');


$parametersArray []= $parametersSynchronizationJobApplicationParameters1;
$requestBody->setParameters($parametersArray);




$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->jobsById('synchronizationJob-id')->provisionOnDemand()->post($requestBody);


```