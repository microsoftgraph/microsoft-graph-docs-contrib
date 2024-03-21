---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SkillProficiency();
$requestBody->setCategories(['Professional', 	]);
$requestBody->setProficiency(new SkillProficiencyLevel('advancedProfessional'));

$result = $graphServiceClient->me()->profile()->skills()->bySkillProficiencyId('skillProficiency-id')->patch($requestBody)->wait();

```