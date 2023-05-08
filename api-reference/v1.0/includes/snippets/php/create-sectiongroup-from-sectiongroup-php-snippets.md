---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SectionGroupsPostRequestBody();
$additionalData = [
		'displayName' => 'Section group name', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->me()->onenote()->sectionGroupsById('sectionGroup-id')->sectionGroups()->post($requestBody);


```