---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Set;
use Microsoft\Graph\Generated\Models\Group;
use Microsoft\Graph\Generated\Models\LocalizedName;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Set();
$requestBody->setOdataType('#microsoft.graph.termStore.set');
$parentGroup = new Group();
$parentGroup->setId('fc733b51-10f1-40fd-b784-dc6d1e42804b');
$requestBody->setParentGroup($parentGroup);
$localizedNamesLocalizedName1 = new LocalizedName();
$localizedNamesLocalizedName1->setLanguageTag('en-US');
$localizedNamesLocalizedName1->setName('Department');
$localizedNamesArray []= $localizedNamesLocalizedName1;
$requestBody->setLocalizedNames($localizedNamesArray);


$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->sets()->post($requestBody)->wait();

```