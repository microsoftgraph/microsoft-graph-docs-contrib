---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantAppManagementPolicy;
use Microsoft\Graph\Beta\Generated\Models\AppManagementApplicationConfiguration;
use Microsoft\Graph\Beta\Generated\Models\PasswordCredentialConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AppCredentialRestrictionType;
use Microsoft\Graph\Beta\Generated\Models\KeyCredentialConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AppKeyCredentialRestrictionType;
use Microsoft\Graph\Beta\Generated\Models\IdentifierUriConfiguration;
use Microsoft\Graph\Beta\Generated\Models\IdentifierUriRestriction;
use Microsoft\Graph\Beta\Generated\Models\AppManagementPolicyActorExemptions;
use Microsoft\Graph\Beta\Generated\Models\CustomSecurityAttributeExemption;
use Microsoft\Graph\Beta\Generated\Models\CustomSecurityAttributeStringValueExemption;
use Microsoft\Graph\Beta\Generated\Models\CustomSecurityAttributeComparisonOperator;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriBlockedSchemeConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AppManagementRestrictionState;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriPlatformBlockedSchemeConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriAllowedSchemeConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriPlatformAllowedSchemeConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriBlockedDomainConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriPlatformBlockedDomainConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriAllowedDomainConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriPlatformAllowedDomainConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriWildcardConfiguration;
use Microsoft\Graph\Beta\Generated\Models\RedirectUriWildcardExcludeFormats;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantAppManagementPolicy();
$requestBody->setIsEnabled(true);
$applicationRestrictions = new AppManagementApplicationConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictionType(new AppCredentialRestrictionType('passwordAddition'));
$passwordCredentialsPasswordCredentialConfiguration1->setMaxLifetime(null);
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2021-01-01T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration1;
$passwordCredentialsPasswordCredentialConfiguration2 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration2->setRestrictionType(new AppCredentialRestrictionType('passwordLifetime'));
$passwordCredentialsPasswordCredentialConfiguration2->setMaxLifetime(new \DateInterval('P90D'));
$passwordCredentialsPasswordCredentialConfiguration2->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2017-01-01T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration2;
$passwordCredentialsPasswordCredentialConfiguration3 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration3->setRestrictionType(new AppCredentialRestrictionType('symmetricKeyAddition'));
$passwordCredentialsPasswordCredentialConfiguration3->setMaxLifetime(null);
$passwordCredentialsPasswordCredentialConfiguration3->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2021-01-01T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration3;
$passwordCredentialsPasswordCredentialConfiguration4 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration4->setRestrictionType(new AppCredentialRestrictionType('customPasswordAddition'));
$passwordCredentialsPasswordCredentialConfiguration4->setMaxLifetime(null);
$passwordCredentialsPasswordCredentialConfiguration4->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2015-01-01T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration4;
$passwordCredentialsPasswordCredentialConfiguration5 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration5->setRestrictionType(new AppCredentialRestrictionType('symmetricKeyLifetime'));
$passwordCredentialsPasswordCredentialConfiguration5->setMaxLifetime(new \DateInterval('P30D'));
$passwordCredentialsPasswordCredentialConfiguration5->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2015-01-01T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration5;
$applicationRestrictions->setPasswordCredentials($passwordCredentialsArray);

$keyCredentialsKeyCredentialConfiguration1 = new KeyCredentialConfiguration();
$keyCredentialsKeyCredentialConfiguration1->setRestrictionType(new AppKeyCredentialRestrictionType('asymmetricKeyLifetime'));
$keyCredentialsKeyCredentialConfiguration1->setMaxLifetime(new \DateInterval('P30D'));
$keyCredentialsKeyCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2015-01-01T10:37:00Z'));
$keyCredentialsArray []= $keyCredentialsKeyCredentialConfiguration1;
$keyCredentialsKeyCredentialConfiguration2 = new KeyCredentialConfiguration();
$keyCredentialsKeyCredentialConfiguration2->setRestrictionType(new AppKeyCredentialRestrictionType('trustedCertificateAuthority'));
$keyCredentialsKeyCredentialConfiguration2->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2019-10-19T10:37:00Z'));
$keyCredentialsKeyCredentialConfiguration2->setCertificateBasedApplicationConfigurationIds(['eec5ba11-2fc0-4113-83a2-ed986ed13743', 'bb8e164b-f9ed-4b98-bc45-65eddc14f4c1', ]);
$keyCredentialsKeyCredentialConfiguration2->setMaxLifetime(null);
$keyCredentialsArray []= $keyCredentialsKeyCredentialConfiguration2;
$applicationRestrictions->setKeyCredentials($keyCredentialsArray);

$applicationRestrictionsIdentifierUris = new IdentifierUriConfiguration();
$applicationRestrictionsIdentifierUrisNonDefaultUriAddition = new IdentifierUriRestriction();
$applicationRestrictionsIdentifierUrisNonDefaultUriAddition->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2024-01-01T10:37:00Z'));
$applicationRestrictionsIdentifierUrisNonDefaultUriAddition->setExcludeAppsReceivingV2Tokens(true);
$applicationRestrictionsIdentifierUrisNonDefaultUriAddition->setExcludeSaml(true);
$applicationRestrictionsIdentifierUrisNonDefaultUriAdditionExcludeActors = new AppManagementPolicyActorExemptions();
$customSecurityAttributesCustomSecurityAttributeExemption1 = new CustomSecurityAttributeStringValueExemption();
$customSecurityAttributesCustomSecurityAttributeExemption1->setOdataType('microsoft.graph.customSecurityAttributeStringValueExemption');
$customSecurityAttributesCustomSecurityAttributeExemption1->setId('PolicyExemptions_AppManagementExemption');
$customSecurityAttributesCustomSecurityAttributeExemption1->setOperator(new CustomSecurityAttributeComparisonOperator('equals'));
$customSecurityAttributesCustomSecurityAttributeExemption1->setValue('ExemptFromIdentifierUriAdditionRestriction');
$customSecurityAttributesArray []= $customSecurityAttributesCustomSecurityAttributeExemption1;
$applicationRestrictionsIdentifierUrisNonDefaultUriAdditionExcludeActors->setCustomSecurityAttributes($customSecurityAttributesArray);

$applicationRestrictionsIdentifierUrisNonDefaultUriAddition->setExcludeActors($applicationRestrictionsIdentifierUrisNonDefaultUriAdditionExcludeActors);
$applicationRestrictionsIdentifierUris->setNonDefaultUriAddition($applicationRestrictionsIdentifierUrisNonDefaultUriAddition);
$applicationRestrictions->setIdentifierUris($applicationRestrictionsIdentifierUris);
$applicationRestrictionsRedirectUris = new RedirectUriConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedScheme = new RedirectUriBlockedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedScheme->setState(new AppManagementRestrictionState('enabled'));
$applicationRestrictionsRedirectUrisUriWithBlockedScheme->setBlockedSchemes(['http', 'ftp', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedScheme->setExemptFormats(['http://example.com/login', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedSchemeWeb = new RedirectUriPlatformBlockedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedSchemeWeb->setBlockedSchemes(['custom-ftps', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedScheme->setWeb($applicationRestrictionsRedirectUrisUriWithBlockedSchemeWeb);
$applicationRestrictionsRedirectUrisUriWithBlockedSchemeSpa = new RedirectUriPlatformBlockedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedSchemeSpa->setBlockedSchemes(['myapp', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedSchemeSpa->setExemptFormats(['https://spa.example.com/auth', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedScheme->setSpa($applicationRestrictionsRedirectUrisUriWithBlockedSchemeSpa);
$applicationRestrictionsRedirectUrisUriWithBlockedSchemePublicClient = new RedirectUriPlatformBlockedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedSchemePublicClient->setBlockedSchemes(['msauth', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedSchemePublicClient->setExemptFormats(['https://public.example.com/auth', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedScheme->setPublicClient($applicationRestrictionsRedirectUrisUriWithBlockedSchemePublicClient);
$applicationRestrictionsRedirectUris->setUriWithBlockedScheme($applicationRestrictionsRedirectUrisUriWithBlockedScheme);
$applicationRestrictionsRedirectUrisUriWithoutAllowedScheme = new RedirectUriAllowedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedScheme->setState(new AppManagementRestrictionState('enabled'));
$applicationRestrictionsRedirectUrisUriWithoutAllowedScheme->setAllowedSchemes(['https', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedSchemeWeb = new RedirectUriPlatformAllowedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedSchemeWeb->setAllowedSchemes(['https', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedScheme->setWeb($applicationRestrictionsRedirectUrisUriWithoutAllowedSchemeWeb);
$applicationRestrictionsRedirectUrisUriWithoutAllowedSchemeSpa = new RedirectUriPlatformAllowedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedSchemeSpa->setAllowedSchemes(['https', 'msal', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedScheme->setSpa($applicationRestrictionsRedirectUrisUriWithoutAllowedSchemeSpa);
$applicationRestrictionsRedirectUrisUriWithoutAllowedSchemePublicClient = new RedirectUriPlatformAllowedSchemeConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedSchemePublicClient->setAllowedSchemes(['myapp', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedScheme->setPublicClient($applicationRestrictionsRedirectUrisUriWithoutAllowedSchemePublicClient);
$applicationRestrictionsRedirectUris->setUriWithoutAllowedScheme($applicationRestrictionsRedirectUrisUriWithoutAllowedScheme);
$applicationRestrictionsRedirectUrisUriWithBlockedDomain = new RedirectUriBlockedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedDomain->setState(new AppManagementRestrictionState('enabled'));
$applicationRestrictionsRedirectUrisUriWithBlockedDomain->setBlockedDomains(['contoso-short.com', 'tempuri.org', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedDomainWeb = new RedirectUriPlatformBlockedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedDomainWeb->setBlockedDomains(['short.contoso.com', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedDomain->setWeb($applicationRestrictionsRedirectUrisUriWithBlockedDomainWeb);
$applicationRestrictionsRedirectUrisUriWithBlockedDomainSpa = new RedirectUriPlatformBlockedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedDomainSpa->setBlockedDomains(['contoso.dev', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedDomain->setSpa($applicationRestrictionsRedirectUrisUriWithBlockedDomainSpa);
$applicationRestrictionsRedirectUrisUriWithBlockedDomainPublicClient = new RedirectUriPlatformBlockedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithBlockedDomainPublicClient->setBlockedDomains(['mspreview.contoso.com', ]);
$applicationRestrictionsRedirectUrisUriWithBlockedDomain->setPublicClient($applicationRestrictionsRedirectUrisUriWithBlockedDomainPublicClient);
$applicationRestrictionsRedirectUris->setUriWithBlockedDomain($applicationRestrictionsRedirectUrisUriWithBlockedDomain);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomain = new RedirectUriAllowedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomain->setState(new AppManagementRestrictionState('enabled'));
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomain->setAllowedDomains(['contoso.com', 'login.microsoftonline.com', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomainWeb = new RedirectUriPlatformAllowedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomainWeb->setAllowedDomains(['app.contoso.com', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomain->setWeb($applicationRestrictionsRedirectUrisUriWithoutAllowedDomainWeb);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomainSpa = new RedirectUriPlatformAllowedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomainSpa->setAllowedDomains(['spa.contoso.com', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomain->setSpa($applicationRestrictionsRedirectUrisUriWithoutAllowedDomainSpa);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomainPublicClient = new RedirectUriPlatformAllowedDomainConfiguration();
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomainPublicClient->setAllowedDomains(['app://contoso', ]);
$applicationRestrictionsRedirectUrisUriWithoutAllowedDomain->setPublicClient($applicationRestrictionsRedirectUrisUriWithoutAllowedDomainPublicClient);
$applicationRestrictionsRedirectUris->setUriWithoutAllowedDomain($applicationRestrictionsRedirectUrisUriWithoutAllowedDomain);
$applicationRestrictionsRedirectUrisUriWithWildcard = new RedirectUriWildcardConfiguration();
$applicationRestrictionsRedirectUrisUriWithWildcard->setState(new AppManagementRestrictionState('enabled'));
$applicationRestrictionsRedirectUrisUriWithWildcardExcludeFormats = new RedirectUriWildcardExcludeFormats();
$applicationRestrictionsRedirectUrisUriWithWildcardExcludeFormats->setExcludeWildcardsInPath(true);
$applicationRestrictionsRedirectUrisUriWithWildcardExcludeFormats->setExcludeWildcardsInPathWithDomains(['contoso.com', 'fabrikam.com', ]);
$applicationRestrictionsRedirectUrisUriWithWildcard->setExcludeFormats($applicationRestrictionsRedirectUrisUriWithWildcardExcludeFormats);
$applicationRestrictionsRedirectUris->setUriWithWildcard($applicationRestrictionsRedirectUrisUriWithWildcard);
$applicationRestrictions->setRedirectUris($applicationRestrictionsRedirectUris);
$requestBody->setApplicationRestrictions($applicationRestrictions);

$result = $graphServiceClient->policies()->defaultAppManagementPolicy()->patch($requestBody)->wait();

```