---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ProjectParticipation();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));

$client = new CompanyDetail();
$client->setDepartment('Corporate Marketing');

$client->setWebUrl('https://www.contoso.com');


$requestBody->setClient($client);


$result = $graphServiceClient->me()->profile()->projectsById('projectParticipation-id')->patch($requestBody);


```