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
	state: 'disabled',
	certificateUserBindings: [{
			x509CertificateField: 'PrincipalName',
			userProperty: 'onPremisesUserPrincipalName',
			priority: 1
		},
		{
			x509CertificateField: 'RFC822Name',
			userProperty: 'userPrincipalName',
			priority: 2
		}
	],
	authenticationModeConfiguration: {
		x509CertificateAuthenticationDefaultMode: 'x509CertificateSingleFactor',
		rules: []
	},
	includeTargets: [{
		targetType: 'group',
		id: 'all_users',
		isRegistrationRequired: false
	}]
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/x509Certificate')
	.version('beta')
	.update(authenticationMethodConfiguration);

```