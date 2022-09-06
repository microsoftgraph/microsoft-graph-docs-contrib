---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agreement = {
  displayName: 'Contoso ToU for guest users',
  isViewingBeforeAcceptanceRequired: true,
  files: [
    {
      fileName: 'TOU.pdf',
      language: 'en',
      isDefault: true,
      fileData: {
        data: 'SGVsbG8gd29ybGQ=//truncated-binary'
      }
    }
  ]
};

await client.api('/identityGovernance/termsOfUse/agreements')
	.post(agreement);

```