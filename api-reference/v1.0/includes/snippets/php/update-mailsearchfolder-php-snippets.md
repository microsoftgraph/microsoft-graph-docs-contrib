---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MailSearchFolder();
$requestBody->set@odatatype('microsoft.graph.mailSearchFolder');

$requestBody->setFilterQuery('contains(subject, \'Analytics\')');



$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->patch($requestBody);


```