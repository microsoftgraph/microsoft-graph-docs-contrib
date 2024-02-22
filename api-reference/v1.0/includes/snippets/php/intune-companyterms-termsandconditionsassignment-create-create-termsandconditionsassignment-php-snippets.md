---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TermsAndConditionsAssignment();
$requestBody->setOdataType('#microsoft.graph.termsAndConditionsAssignment');
$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');
$target->setCollectionId('Collection Id value');
$requestBody->setTarget($target);

$result = $graphServiceClient->deviceManagement()->termsAndConditions()->byTermsAndConditionsId('termsAndConditions-id')->assignments()->post($requestBody)->wait();

```