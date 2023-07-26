---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new VerticalSection();
$requestBody->setEmphasis(new SectionEmphasisType('strong'));



$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->byPageId('sitePage-id')->canvasLayout()->verticalSection()->patch($requestBody);


```