---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const processContentResponse = {
    contentToProcess: {
        contentEntries: [
            {
                '@odata.type': '#microsoft.graph.processConversationMetadata',
                identifier: 'f7af180f-dc2e-467c-9719-757e1c61eabf',
                content: {
                    '@odata.type': '#microsoft.graph.binaryContent',
                    data: 'Base64 encoded content'
                },
                name: 'Some name',
                correlationId: 'd63eafd2-e3a9-4c1a-b726-a2e9b9d95822'
            }
        ],
        activityMetadata: {
            activity: 'uploadFile'
        },
        deviceMetadata: {
            deviceType: 'Unmanaged',
            ipAddress: null,
            operatingSystemSpecifications: {
                operatingSystemPlatform: 'Windows',
                operatingSystemVersion: '11.1'
            }
        },
        integratedAppMetadata: {
            name: 'Some integrated app name',
            version: '1.0.0'
        },
        protectedAppMetadata: {
            applicationLocation: {
                '@odata.type': '#microsoft.graph.policyLocationUrl',
                value: 'https://gemini.google.com'
            }
        }
    }
};

await client.api('/me/dataSecurityAndGovernance/processContent')
	.version('beta')
	.post(processContentResponse);

```