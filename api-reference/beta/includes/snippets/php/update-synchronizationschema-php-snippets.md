---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchemaPutRequestBody();
$additionalData = [
		'directories' => $directories1 = new ();
$		directories1->setName('Azure Active Directory');

$objects1 = new ();
$		objects1->setName('User');

$attributes1 = new ();
$		attributes1->setName('userPrincipalName');

$		attributes1->setType('string');


$attributesArray []= $attributes1;
$objects1->setAttributes($attributesArray);



$objectsArray []= $objects1;
$directories1->setObjects($objectsArray);



$directoriesArray []= $directories1;
$directories2 = new ();
$directories2->setName('Salesforce');


$directoriesArray []= $directories2;
$requestBody->setDirectories($directoriesArray);


'synchronizationRules' => $synchronizationRules1 = new ();
$synchronizationRules1->setName('USER_TO_USER');

$synchronizationRules1->setSourceDirectoryName('Azure Active Directory');

$synchronizationRules1->setTargetDirectoryName('Salesforce');

$objectMappings1 = new ();
$objectMappings1->setSourceObjectName('User');

$objectMappings1->setTargetObjectName('User');

$attributeMappings1 = new ();
$attributeMappings1Source = new Source();

$attributeMappings1->setSource($attributeMappings1Source);
$attributeMappings1->setTargetAttributeName('userName');


$attributeMappingsArray []= $attributeMappings1;
$objectMappings1->setAttributeMappings($attributeMappingsArray);



$objectMappingsArray []= $objectMappings1;
$synchronizationRules1->setObjectMappings($objectMappingsArray);



$synchronizationRulesArray []= $synchronizationRules1;
$requestBody->setSynchronizationRules($synchronizationRulesArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->jobsById('synchronizationJob-id')->schema()->put($requestBody);


```