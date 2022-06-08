---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agreementFileLocalization = {
    fileName: 'Contoso ToU for guest users (French)',
    language: 'fr-FR',
    isDefault: false,
    isMajorVersion: false,
    displayName: 'Contoso ToU for guest users (French)',
    fileData: {
        data: 'base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data'
    }
};

await client.api('/identityGovernance/termsOfUse/agreements/94410bbf-3d3e-4683-8149-f034e55c39dd/files')
	.post(agreementFileLocalization);

```