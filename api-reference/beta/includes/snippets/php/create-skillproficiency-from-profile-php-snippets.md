---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SkillProficiency;
use Microsoft\Graph\Beta\Generated\Models\AllowedAudiences;
use Microsoft\Graph\Beta\Generated\Models\SkillProficiencyLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SkillProficiency();
$requestBody->setCategories(['Professional', 	]);
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));
$requestBody->setDisplayName('API Design');
$requestBody->setProficiency(new SkillProficiencyLevel('generalProfessional'));
$requestBody->setCollaborationTags(['ableToMentor', 	]);

$result = $graphServiceClient->me()->profile()->skills()->post($requestBody)->wait();

```