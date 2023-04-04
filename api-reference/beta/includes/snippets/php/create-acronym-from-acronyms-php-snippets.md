---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Acronym();
$requestBody->setDisplayName('GDPR');

$requestBody->setStandsFor('General Data Protection Regulation');

$requestBody->setDescription('A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals\' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.');

$requestBody->setWebUrl('http://contoso.com/GDPR');

$requestBody->setState(new AnswerState('published'));



$requestResult = $graphServiceClient->search()->acronyms()->post($requestBody);


```