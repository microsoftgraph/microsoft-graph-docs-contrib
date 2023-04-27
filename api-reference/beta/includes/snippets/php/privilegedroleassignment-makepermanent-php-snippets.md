---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MakePermanentPostRequestBody();
$requestBody->setReason('reason-value');

$requestBody->setTicketNumber('ticketNumber-value');

$requestBody->setTicketSystem('ticketSystem-value');



$result = $graphServiceClient->privilegedRoleAssignmentsById('privilegedRoleAssignment-id')->makePermanent()->post($requestBody);


```