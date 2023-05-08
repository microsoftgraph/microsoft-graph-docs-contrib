---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SkillProficiency();
$requestBody->setCategories(['Professional', ]);

$requestBody->setProficiency(new SkillProficiencyLevel('advancedprofessional'));



$result = $graphServiceClient->me()->profile()->skillsById('skillProficiency-id')->patch($requestBody);


```