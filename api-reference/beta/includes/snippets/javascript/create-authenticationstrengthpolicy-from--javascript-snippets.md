---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationStrengthPolicy = {
    displayName: 'Example',
    requirementsSatisfied: 'mfa',
    allowedCombinations: [
        'fido2'
    ],
    'combinationConfigurations@odata.context': 'https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies(\'5790842a-5bab-44c2-9cf1-b38d675b70ea\')/combinationConfigurations',
    combinationConfigurations: [
        {
            '@odata.type': '#microsoft.graph.fido2CombinationConfiguration',
            id: '42235320-c8db-4d8c-9344-8f1ce87f734b',
            appliesToCombinations: [
                'fido2'
            ],
            allowedAAGUIDs: [
                'de1e552d-db1d-4423-a619-566b625cdc84',
                '90a3ccdf-635c-4729-a248-9b709135078f'
            ]
        }
    ]
};

await client.api('/policies/authenticationStrengthPolicies')
	.version('beta')
	.post(authenticationStrengthPolicy);

```