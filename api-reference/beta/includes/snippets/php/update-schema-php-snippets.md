---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Schema();
$requestBody->setBaseType('microsoft.graph.externalItem');

$propertiesProperty1 = new Property();
$propertiesProperty1->setName('ticketTitle');

$propertiesProperty1->setType(new PropertyType('string'));

$propertiesProperty1->setIsSearchable(true);

$propertiesProperty1->setIsRetrievable(true);

$propertiesProperty1->setLabels([new Label('title'),	]);


$propertiesArray []= $propertiesProperty1;
$propertiesProperty2 = new Property();
$propertiesProperty2->setName('priority');

$propertiesProperty2->setType(new PropertyType('string'));

$propertiesProperty2->setIsQueryable(true);

$propertiesProperty2->setIsRetrievable(true);

$propertiesProperty2->setIsSearchable(false);


$propertiesArray []= $propertiesProperty2;
$propertiesProperty3 = new Property();
$propertiesProperty3->setName('assignee');

$propertiesProperty3->setType(new PropertyType('string'));

$propertiesProperty3->setIsRetrievable(true);


$propertiesArray []= $propertiesProperty3;
$requestBody->setProperties($propertiesArray);




$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->schema()->patch($requestBody);


```