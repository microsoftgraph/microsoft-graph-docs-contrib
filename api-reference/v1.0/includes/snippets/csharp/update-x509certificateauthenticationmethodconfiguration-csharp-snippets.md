---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
	Id = "X509Certificate",
	State = AuthenticationMethodState.Enabled,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"certificateUserBindings" , new List<>
			{
				new 
				{
					X509CertificateField = "PrincipalName",
					UserProperty = "onPremisesUserPrincipalName",
					Priority = 1,
				},
			}
		},
		{
			"authenticationModeConfiguration" , new 
			{
				X509CertificateAuthenticationDefaultMode = "x509CertificateMultiFactor",
				Rules = new List<>
				{
					new 
					{
						X509CertificateRuleType = "issuerSubject",
						Identifier = "CN=ContosoCA,DC=Contoso,DC=org ",
						X509CertificateAuthenticationMode = "x509CertificateMultiFactor",
					},
					new 
					{
						X509CertificateRuleType = "policyOID",
						Identifier = "1.2.3.4",
						X509CertificateAuthenticationMode = "x509CertificateMultiFactor",
					},
				},
			}
		},
		{
			"includeTargets" , new List<>
			{
				new 
				{
					TargetType = "group",
					Id = "all_users",
					IsRegistrationRequired = false,
				},
			}
		},
	},
};
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```