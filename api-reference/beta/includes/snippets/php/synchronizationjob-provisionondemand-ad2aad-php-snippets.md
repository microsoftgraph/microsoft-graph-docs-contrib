---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ProvisionOnDemandPostRequestBody();
$parametersSynchronizationJobApplicationParameters1 = new SynchronizationJobApplicationParameters();
$parametersSynchronizationJobApplicationParameters1->setRuleId('6c409270-f78a-4bc6-af23-7cf3ab6482fe');

$subjectsSynchronizationJobSubject1 = new SynchronizationJobSubject();
$subjectsSynchronizationJobSubject1->setObjectId('CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com');

$subjectsSynchronizationJobSubject1->setObjectTypeName('user');


$subjectsArray []= $subjectsSynchronizationJobSubject1;
$parametersSynchronizationJobApplicationParameters1->setSubjects($subjectsArray);



$parametersArray []= $parametersSynchronizationJobApplicationParameters1;
$requestBody->setParameters($parametersArray);




$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->jobsById('synchronizationJob-id')->provisionOnDemand()->post($requestBody);


```