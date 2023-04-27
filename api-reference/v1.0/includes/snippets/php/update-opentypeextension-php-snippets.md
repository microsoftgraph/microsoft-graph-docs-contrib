---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Extension();
$requestBody->set@odatatype('Microsoft.OutlookServices.OpenTypeExtension');

$additionalData = [
		'extensionName' => 'Com.Contoso.Estimate', 
		'companyName' => 'Contoso', 
		'expirationDate' => '2016-07-30T11:00:00.000Z', 
		'DealValue' => 1010100,
		'topPicks' => ['Employees only', 'Add spouse or guest', 'Add family', ],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->postsById('post-id')->extensionsById('extension-id')->patch($requestBody);


```