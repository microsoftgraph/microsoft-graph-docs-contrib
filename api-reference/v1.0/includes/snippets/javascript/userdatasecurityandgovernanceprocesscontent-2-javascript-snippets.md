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
					'@odata.type': '#microsoft.graph.textContent',
					data: 'some data'
				},
				correlationId: 'd63eafd2-e3a9-4c1a-b726-a2e9b9d95811',
				sequenceNumber: 0,
				name: 'Test Content'
			}
		],
		activityMetadata: {
			activity: 'uploadText'
		},
		deviceMetadata: {
			deviceType: 'unmanaged',
			ipAddress: null,
			operatingSystemSpecifications: {
				operatingSystemPlatform: 'Windows',
				operatingSystemVersion: '11.1'
			}
		},
		integratedAppMetadata: {
			name: 'My Entra App',
			version: '0.1'
		},
		protectedAppMetadata: {
			name: 'My Entra App',
			version: '0.1',
			applicationLocation: {
				'@odata.type': '#microsoft.graph.policyLocationUrl',
				value: 'https://gemini.google.com'
			}
		}
	}
};

await client.api('/users/{5def8f26-aff8-4db6-a08c-0fcf8f1aa2ba}/dataSecurityAndGovernance/processContent')
	.post(processContentResponse);

```