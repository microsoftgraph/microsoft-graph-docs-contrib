---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GovernanceRoleAssignmentRequest();
$requestBody->setRoleDefinitionId('bc75b4e6-7403-4243-bf2f-d1f6990be122');

$requestBody->setResourceId('fb016e3a-c3ed-4d9d-96b6-a54cd4f0b735');

$requestBody->setSubjectId('918e54be-12c4-4f4c-a6d3-2ee0e3661c51');

$requestBody->setAssignmentState('Active');

$requestBody->setType('UserRemove');

$requestBody->setReason('Deactivate the role');

$requestBody->setLinkedEligibleRoleAssignmentId('cb8a533e-02d5-42ad-8499-916b1e4822ec');



$result = $graphServiceClient->privilegedAccessById('privilegedAccess-id')->roleAssignmentRequests()->post($requestBody);


```