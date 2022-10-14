---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchemaExtension();
$requestBody->setOwner('ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa');

$propertiesExtensionSchemaProperty1 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseId', 
'type' => 'Integer', 
];
$propertiesExtensionSchemaProperty1->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty1;
$propertiesExtensionSchemaProperty2 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseName', 
'type' => 'String', 
];
$propertiesExtensionSchemaProperty2->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty2;
$propertiesExtensionSchemaProperty3 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseType', 
'type' => 'String', 
];
$propertiesExtensionSchemaProperty3->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty3;
$propertiesExtensionSchemaProperty4 = new ExtensionSchemaProperty();
$additionalData = [
'name' => 'courseSupervisors', 
'type' => 'String', 
];
$propertiesExtensionSchemaProperty4->setAdditionalData($additionalData);



$propertiesArray []= $propertiesExtensionSchemaProperty4;
$requestBody->setProperties($propertiesArray);




$graphServiceClient->schemaExtensionsById('schemaExtension-id')->patch($requestBody);


```