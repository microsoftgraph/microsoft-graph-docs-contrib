---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new X509CertificateAuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
	Id = "X509Certificate",
	State = AuthenticationMethodState.Enabled,
	CertificateUserBindings = new List<X509CertificateUserBinding>
	{
		new X509CertificateUserBinding
		{
			X509CertificateField = "PrincipalName",
			UserProperty = "onPremisesUserPrincipalName",
			Priority = 1,
		},
	},
	AuthenticationModeConfiguration = new X509CertificateAuthenticationModeConfiguration
	{
		X509CertificateAuthenticationDefaultMode = X509CertificateAuthenticationMode.X509CertificateMultiFactor,
		Rules = new List<X509CertificateRule>
		{
			new X509CertificateRule
			{
				X509CertificateRuleType = X509CertificateRuleType.IssuerSubject,
				Identifier = "CN=ContosoCA,DC=Contoso,DC=org ",
				X509CertificateAuthenticationMode = X509CertificateAuthenticationMode.X509CertificateMultiFactor,
			},
			new X509CertificateRule
			{
				X509CertificateRuleType = X509CertificateRuleType.PolicyOID,
				Identifier = "1.2.3.4",
				X509CertificateAuthenticationMode = X509CertificateAuthenticationMode.X509CertificateMultiFactor,
			},
		},
	},
	CrlValidationConfiguration = new X509CertificateCRLValidationConfiguration
	{
		State = X509CertificateCRLValidationConfigurationState.Disabled,
		ExemptedCertificateAuthoritiesSubjectKeyIdentifiers = new List<string>
		{
		},
	},
	IncludeTargets = new List<AuthenticationMethodTarget>
	{
		new AuthenticationMethodTarget
		{
			TargetType = AuthenticationMethodTargetType.Group,
			Id = "all_users",
			IsRegistrationRequired = false,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```