---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SkillProficiency();
$requestBody->setCategories(['Professional', 	]);
$requestBody->setProficiency(new SkillProficiencyLevel('advancedProfessional'));

$result = $graphServiceClient->me()->profile()->skills()->bySkillProficiencyId('skillProficiency-id')->patch($requestBody)->wait();

```