---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateBasedApplicationConfiguration = {
    displayName: 'Trusted Certificate Chain of Trust for Contoso',
    description: 'The Trusted Certificate Chain of Trust containing a certificate chain used by app policy, to only allow application certificates from selected issuer.',
    trustedCertificateAuthorities: [
        {
            isRootAuthority: true,
            certificate: 'MIIFVjCCAz6gAwIBAgIQJdrL...UyNDIyNTcwM1owPDE …='
        },
        {
            isRootAuthority: false,
            certificate: QAAAAAAWjABAQsFADA8M...UyNDIyNTcwM1o …="
        }
    ]
};

await client.api('/certificateAuthorities/certificateBasedApplicationConfigurations')
	.version('beta')
	.post(certificateBasedApplicationConfiguration);

```