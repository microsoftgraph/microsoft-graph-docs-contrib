---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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


$result = $graphServiceClient->sitesById('site-id')->listsById('list-id')->columns()->post($requestBody);


```