---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->education()->schools()->byEducationSchoolId('educationSchool-id')->users()->byEducationUserId('educationUser-id')->ref()->delete()->wait();

```