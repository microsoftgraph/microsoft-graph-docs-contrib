---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TermsAndConditionsAssignment();
$requestBody->set@odatatype('#microsoft.graph.termsAndConditionsAssignment');

$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->set@odatatype('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$target->setCollectionId('Collection Id value');


$requestBody->setTarget($target);


$result = $graphServiceClient->deviceManagement()->termsAndConditions()->byTermsAndConditionId('termsAndConditions-id')->assignments()->byAssignmentId('termsAndConditionsAssignment-id')->patch($requestBody);


```