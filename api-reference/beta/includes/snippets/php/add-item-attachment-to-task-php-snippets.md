---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Attachment();
$requestBody->set@odatatype('#microsoft.graph.itemAttachment');

$requestBody->setName('Holiday event');

$additionalData = [
		'item' => $requestBody = new Item();
$		requestBody->set@odatatype('microsoft.graph.event');

$		requestBody->setSubject('Discuss gifts for children');

$body = new Body();
$		body->setContentType('HTML');

$		body->setContent('Let\'s look for funding!');


$requestBody->setBody($body);
$start = new Start();
$		start->setDateTime('2020-01-12T18:00:00');

$		start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new End();
$		end->setDateTime('2020-01-12T19:00:00');

$		end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);

$requestBody->setItem($item);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->outlook()->tasksById('outlookTask-id')->attachments()->post($requestBody);


```