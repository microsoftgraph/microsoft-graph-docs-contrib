---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new HorizontalSection();
$requestBody->setEmphasis(new SectionEmphasisType('soft'));

$requestBody->setLayout(new HorizontalSectionLayoutType('onecolumn'));

$requestBody->setId('3');

$columnsHorizontalSectionColumn1 = new HorizontalSectionColumn();
$columnsHorizontalSectionColumn1->setId('1');

$columnsHorizontalSectionColumn1->setWidth(12);

$webpartsWebPart1 = new WebPart();
$webpartsWebPart1->setId('20a69b85-529c-41f3-850e-c93458aa74eb');

$additionalData = [
		'innerHtml' => '<p>sample text in text web part</p>', 
];
$webpartsWebPart1->setAdditionalData($additionalData);



$webpartsArray []= $webpartsWebPart1;
$columnsHorizontalSectionColumn1->setWebparts($webpartsArray);



$columnsArray []= $columnsHorizontalSectionColumn1;
$requestBody->setColumns($columnsArray);




$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->byPageId('sitePage-id')->canvasLayout()->horizontalSections()->post($requestBody);


```