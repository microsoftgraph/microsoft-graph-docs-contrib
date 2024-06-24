---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\TermsOfUse\Agreements\Item\AgreementItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AgreementItemRequestBuilderGetRequestConfiguration();
$queryParameters = AgreementItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["files"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreements()->byAgreementId('agreement-id')->get($requestConfiguration)->wait();

```