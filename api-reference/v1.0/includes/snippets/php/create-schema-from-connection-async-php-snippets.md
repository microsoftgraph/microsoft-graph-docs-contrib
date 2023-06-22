---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchemaPostRequestBody();
$additionalData = [
		'baseType' => 'microsoft.graph.externalItem', 
		'properties' => $properties1 = new ();
$		properties1->setName('ticketTitle');

$		properties1->setType('String');

$		properties1->setIsSearchable('true');

$		properties1->setIsRetrievable('true');

$properties1->setLabels(['title', ]);


$propertiesArray []= $properties1;
$properties2 = new ();
$	properties2->setName('priority');

$	properties2->setType('String');

$	properties2->setIsQueryable('true');

$	properties2->setIsRetrievable('true');

$	properties2->setIsSearchable('false');


$propertiesArray []= $properties2;
$properties3 = new ();
$	properties3->setName('assignee');

$	properties3->setType('String');

$	properties3->setIsRetrievable('true');


$propertiesArray []= $properties3;
$requestBody->setProperties($propertiesArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->external()->connectionsById('externalConnection-id')->schema()->post($requestBody);


```