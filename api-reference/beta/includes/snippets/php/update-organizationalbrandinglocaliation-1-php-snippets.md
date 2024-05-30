---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Organization\Item\Branding\BrandingRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\OrganizationalBranding;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBranding();
$requestBody->setSignInPageText('Default');
$requestBody->setUsernameHintText('DefaultHint');
$requestConfiguration = new BrandingRequestBuilderPatchRequestConfiguration();
$headers = [
		'Accept-Language' => '0',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->patch($requestBody, $requestConfiguration)->wait();

```