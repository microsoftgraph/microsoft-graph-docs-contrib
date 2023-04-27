---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SectionGroup();
$requestBody->setDisplayName('Section group name');



$result = $graphServiceClient->me()->onenote()->notebooksById('notebook-id')->sectionGroups()->post($requestBody);


```