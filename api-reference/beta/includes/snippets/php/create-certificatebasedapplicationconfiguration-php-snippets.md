---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CertificateBasedApplicationConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateBasedApplicationConfiguration();
$requestBody->setDisplayName('Tenant Trusted Certificate Chain of Trust for Application Configuration');
$requestBody->setDescription('The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.');
$additionalData = [
	'trustedCertificateAuthorities ' => [
			[
				'isRootAuthority' => true,
				'certificate' => 'MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->post($requestBody)->wait();

```