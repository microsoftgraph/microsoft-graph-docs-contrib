---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ProvisionOnDemandPostRequestBody;
use Microsoft\Graph\Generated\Models\SynchronizationJobApplicationParameters;
use Microsoft\Graph\Generated\Models\SynchronizationJobSubject;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->jobs()->bySynchronizationJobId('synchronizationJob-id')->provisionOnDemand()->post($requestBody)->wait();

```