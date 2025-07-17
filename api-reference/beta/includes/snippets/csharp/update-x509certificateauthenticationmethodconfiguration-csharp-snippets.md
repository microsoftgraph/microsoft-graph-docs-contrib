---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

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
	IssuerHintsConfiguration = new X509CertificateIssuerHintsConfiguration
	{
		State = X509CertificateIssuerHintsState.Disabled,
	},
	CertificateAuthorityScopes = new List<X509CertificateAuthorityScope>
	{
		new X509CertificateAuthorityScope
		{
			SubjectKeyIdentifier = "aaaaaaaabbbbcccc111122222222222222333333",
			PublicKeyInfrastructureIdentifier = "Contoso PKI",
			IncludeTargets = new List<IncludeTarget>
			{
				new IncludeTarget
				{
					Id = "aaaaaaaa-bbbb-cccc-1111-222222222222",
					TargetType = AuthenticationMethodTargetType.Group,
				},
			},
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
	AdditionalData = new Dictionary<string, object>
	{
		{
			"crlValidationConfiguration" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"state", new UntypedString("disabled")
				},
				{
					"exemptedCertificateAuthoritiesSubjectKeyIdentifiers", new UntypedArray(new List<UntypedNode>
					{
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```