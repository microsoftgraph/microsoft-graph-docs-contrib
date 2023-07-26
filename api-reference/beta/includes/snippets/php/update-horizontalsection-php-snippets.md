---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new HorizontalSection();
$requestBody->setEmphasis(new SectionEmphasisType('strong'));

$requestBody->setLayout(new HorizontalSectionLayoutType('twocolumns'));



$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->byPageId('sitePage-id')->canvasLayout()->horizontalSections()->byHorizontalSectionId('horizontalSection-id')->patch($requestBody);


```