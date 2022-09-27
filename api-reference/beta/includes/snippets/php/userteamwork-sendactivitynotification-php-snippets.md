---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SendActivityNotificationPostRequestBody();
$topic = new TeamworkActivityTopic();
$topic->setSource(new TeamworkActivityTopicSource('entityurl'));

$topic->setValue('https://graph.microsoft.com/beta/users/{userId}/teamwork/installedApps/{installationId}');


$requestBody->setTopic($topic);
$requestBody->setActivityType('taskCreated');

$previewText = new ItemBody();
$previewText->setContent('New Task Created');


$requestBody->setPreviewText($previewText);
$templateParametersKeyValuePair1 = new KeyValuePair();
$templateParametersKeyValuePair1->setName('taskId');

$templateParametersKeyValuePair1->setValue('Task 12322');


$templateParametersArray []= $templateParametersKeyValuePair1;
$requestBody->setTemplateParameters($templateParametersArray);




$graphServiceClient->usersById('user-id')->teamwork()->sendActivityNotification()->post($requestBody);


```