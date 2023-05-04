---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CertificateBasedAuthConfiguration
{
	CertificateAuthorities = new List<CertificateAuthority>
	{
		new CertificateAuthority
		{
			IsRootAuthority = true,
			Certificate = Convert.FromBase64String("Binary"),
		},
	},
};
var result = await graphClient.Organization["{organization-id}"].CertificateBasedAuthConfiguration.PostAsync(requestBody);


```