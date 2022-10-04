---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BundlesPostRequestBody();
$additionalData = [
'name' => 'Just some files', 
'@microsoft.graph.conflictBehavior' => 'rename', 
'bundle' => $requestBody = new Bundle();

$requestBody->setBundle($bundle);

'children' => $children1 = new ();
$		children1->setId('1234asdf');


$childrenArray []= $children1;
$children2 = new ();
$		children2->setId('1234qwerty');


$childrenArray []= $children2;
$requestBody->setChildren($childrenArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->drive()->bundles()->post($requestBody);


```