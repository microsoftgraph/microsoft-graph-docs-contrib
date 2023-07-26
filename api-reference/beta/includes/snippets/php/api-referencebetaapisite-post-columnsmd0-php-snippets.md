---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ColumnDefinition();
$requestBody->setDescription('test');

$requestBody->setEnforceUniqueValues(false);

$requestBody->setHidden(false);

$requestBody->setIndexed(false);

$requestBody->setName('Title');

$text = new TextColumn();
$text->setAllowMultipleLines(false);

$text->setAppendChangesToExistingText(false);

$text->setLinesForEditing(0);

$text->setMaxLength(255);


$requestBody->setText($text);


$result = $graphServiceClient->sites()->bySiteId('site-id')->columns()->post($requestBody);


```