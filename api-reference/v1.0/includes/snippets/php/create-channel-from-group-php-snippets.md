---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Channel();
$requestBody->setDisplayName('Architecture Discussion');

$requestBody->setDescription('This channel is where we debate all future architecture plans');

$requestBody->setMembershipType(new ChannelMembershipType('standard'));



$result = $graphServiceClient->teamsById('team-id')->channels()->post($requestBody);


```