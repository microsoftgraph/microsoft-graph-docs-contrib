---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SkillProficiency;
use Microsoft\Graph\Beta\Generated\Models\SkillProficiencyLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SkillProficiency();
$requestBody->setCategories(['Professional', 	]);
$requestBody->setProficiency(new SkillProficiencyLevel('advancedProfessional'));

$result = $graphServiceClient->me()->profile()->skills()->bySkillProficiencyId('skillProficiency-id')->patch($requestBody)->wait();

```