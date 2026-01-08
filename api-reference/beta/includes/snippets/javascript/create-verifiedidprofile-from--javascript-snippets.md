---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const verifiedIdProfile = {
  name: 'Contoso Verified ID',
  description: 'Contoso Verified Identity',
  lastModifiedDateTime: null,
  state: 'enabled',
  verifierDid: 'did:web:eu.did-dev.contoso.io',
  priority: 0,
  verifiedIdProfileConfiguration: {
      type: 'verifiedIdentity',
      acceptedIssuer: 'did:web:eu.did-dev.contoso.io',
      claimBindingSource: 'directory',
      claimBindings: [
          {
              sourceAttribute: 'First name',
              verifiedIdClaim: 'vc.credentialSubject.firstName'
          },
          {
              sourceAttribute: 'Last name',
              verifiedIdClaim: 'vc.credentialSubject.lastName'
          }
      ]
  },
  faceCheckConfiguration: {
      isEnabled: true,
      sourcePhotoClaimName: 'portrait'
  },
  verifiedIdUsageConfigurations: [
      {
          isEnabledForTestOnly: true,
          purpose: 'recovery'
      }
  ]
};

await client.api('/identity/verifiedId/profiles')
	.version('beta')
	.post(verifiedIdProfile);

```