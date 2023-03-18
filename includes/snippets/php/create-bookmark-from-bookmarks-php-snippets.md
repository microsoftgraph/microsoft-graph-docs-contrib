---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Bookmark();
$requestBody->setDisplayName('Contoso Install Site');

$requestBody->setWebUrl('http://www.contoso.com/');

$requestBody->setDescription('Try or buy Contoso for Home or Business and view product information');

$keywords = new AnswerKeyword();
$keywords->setKeywords(['Contoso', 'install', ]);

$keywords->setReservedKeywords(['Contoso', ]);

$keywords->setMatchSimilarKeywords(true);


$requestBody->setKeywords($keywords);
$requestBody->setState(new AnswerState('published'));



$requestResult = $graphServiceClient->search()->bookmarks()->post($requestBody);


```