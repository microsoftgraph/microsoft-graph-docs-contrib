---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType('UserAdd');
$accessPackageAssignment = new AccessPackageAssignment();
$accessPackageAssignment->setAccessPackageId('a914b616-e04e-476b-aa37-91038f0b165b');
$requestBody->setAccessPackageAssignment($accessPackageAssignment);
$requestBody->setJustification('Need access to New Hire access package');

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->post($requestBody)->wait();

```