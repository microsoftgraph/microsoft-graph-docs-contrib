---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const verifiedIdProfile = {
  verifiedIdProfileConfiguration: {
    methodType: 'tenantCustomCredential',
    manifestUrl: 'https://verifiedid.contoso.com/manifest'
  },
  mobileDriversLicenseConfiguration: {
    acceptedRegions: [
      'region-code'
    ],
    documentStandard: 'document-standard'
  },
  selfServiceIssuance: {
    isEnabled: true,
    issuanceUrl: 'https://verifiedid.contoso.com/issue'
  },
  verifiedIdUsageConfigurations: [
    {
      isEnabledForTestOnly: false,
      purpose: 'verification'
    }
  ]
};

await client.api('/identity/verifiedId/profiles/ca15ec56-7adf-42ee-847b-00c3008264fb')
	.version('beta')
	.update(verifiedIdProfile);

```