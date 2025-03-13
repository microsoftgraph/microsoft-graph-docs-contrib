---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    keyCredentials: [
        {
            endDateTime: '2024-01-11T15:31:26Z',
            startDateTime: '2023-01-12T15:31:26Z',
            type: 'AsymmetricX509Cert',
            usage: 'Verify',
            key: 'base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==',
            displayName: 'CN=20230112'
        }
    ]
};

await client.api('/applications/bb77f42f-dacb-4ece-b3e6-285e63c24d52')
	.update(application);

```