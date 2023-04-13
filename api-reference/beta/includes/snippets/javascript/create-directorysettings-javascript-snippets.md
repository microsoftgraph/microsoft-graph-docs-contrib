---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directorySetting = {
    templateId: '62375ab9-6b52-47ed-826b-58e47e0e304b',
    values: [
        {
            name: 'GuestUsageGuidelinesUrl',
            value: 'https://privacy.contoso.com/privacystatement'
        },
        {
            name: 'EnableMSStandardBlockedWords',
            value: 'true'
        },
        {
            name: 'EnableMIPLabels',
            value: 'true'
        },
        {
            name: 'PrefixSuffixNamingRequirement',
            value: '[Contoso-][GroupName]'
        }
    ]
};

await client.api('/settings')
	.version('beta')
	.post(directorySetting);

```