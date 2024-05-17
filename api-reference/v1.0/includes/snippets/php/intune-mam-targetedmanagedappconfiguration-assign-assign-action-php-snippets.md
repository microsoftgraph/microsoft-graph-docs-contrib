---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignPostRequestBody;
use Microsoft\Graph\Generated\Models\TargetedManagedAppPolicyAssignment;
use Microsoft\Graph\Generated\Models\ConfigurationManagerCollectionAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsTargetedManagedAppPolicyAssignment1 = new TargetedManagedAppPolicyAssignment();
$assignmentsTargetedManagedAppPolicyAssignment1->setOdataType('#microsoft.graph.targetedManagedAppPolicyAssignment');
$assignmentsTargetedManagedAppPolicyAssignment1->setId('8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b');
$assignmentsTargetedManagedAppPolicyAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$assignmentsTargetedManagedAppPolicyAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');
$assignmentsTargetedManagedAppPolicyAssignment1Target->setCollectionId('Collection Id value');
$assignmentsTargetedManagedAppPolicyAssignment1->setTarget($assignmentsTargetedManagedAppPolicyAssignment1Target);
$assignmentsArray []= $assignmentsTargetedManagedAppPolicyAssignment1;
$requestBody->setAssignments($assignmentsArray);


$graphServiceClient->deviceAppManagement()->targetedManagedAppConfigurations()->byTargetedManagedAppConfigurationId('targetedManagedAppConfiguration-id')->assign()->post($requestBody)->wait();

```