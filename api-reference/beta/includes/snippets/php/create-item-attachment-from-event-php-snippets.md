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
'item' => $requestBody = new ();
$		requestBody->set@odatatype('microsoft.graph.event');

$		requestBody->setSubject('Discuss gifts for children');

$body = new ();
$		body->setContentType('HTML');

$		body->setContent('Let\'s look for funding!');


$requestBody->setBody($body);
$start = new ();
$		start->setDateTime('2016-12-02T18:00:00');

$		start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new ();
$		end->setDateTime('2016-12-02T19:00:00');

$		end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);

$requestBody->setItem($item);

];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->me()->eventsById('event-id')->attachments()->post($requestBody);


```