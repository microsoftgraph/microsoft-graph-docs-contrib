---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SkillProficiency;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SkillProficiency();
$requestBody->setCategories(['Professional', 	]);
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));
$requestBody->setDisplayName('API Design');
$requestBody->setProficiency(new SkillProficiencyLevel('generalProfessional'));
$requestBody->setCollaborationTags(['ableToMentor', 	]);

$result = $graphServiceClient->me()->profile()->skills()->post($requestBody)->wait();

```