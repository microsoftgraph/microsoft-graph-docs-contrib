---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	KeyCredentials = new List<KeyCredential>
	{
		new KeyCredential
		{
			EndDateTime = DateTimeOffset.Parse("2024-01-11T15:31:26Z"),
			StartDateTime = DateTimeOffset.Parse("2023-01-12T15:31:26Z"),
			Type = "AsymmetricX509Cert",
			Usage = "Verify",
			Key = Convert.FromBase64String("base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A=="),
			DisplayName = "CN=20230112",
		},
	},
};
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```