---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
    '@odata.type': '#microsoft.graph.x509CertificateAuthenticationMethodConfiguration',
    id: 'X509Certificate',
    state: 'enabled',
    certificateUserBindings: [
        {
            x509CertificateField: 'PrincipalName',
            userProperty: 'onPremisesUserPrincipalName',
            priority: 1
        }
    ],
    authenticationModeConfiguration: {
        x509CertificateAuthenticationDefaultMode: 'x509CertificateMultiFactor',
        rules: [
            {
                x509CertificateRuleType: 'issuerSubject',
                identifier: 'CN=ContosoCA,DC=Contoso,DC=org ',
                x509CertificateAuthenticationMode: 'x509CertificateMultiFactor'
            },
            {
                x509CertificateRuleType: 'policyOID',
                identifier: '1.2.3.4',
                x509CertificateAuthenticationMode: 'x509CertificateMultiFactor'
            }
        ]
    },
    includeTargets: [
        {
            targetType: 'group',
            id: 'all_users',
            isRegistrationRequired: false
        }
    ]
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/x509Certificate')
	.version('beta')
	.update(authenticationMethodConfiguration);

```