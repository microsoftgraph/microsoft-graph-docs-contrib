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
				'@odata.type': '#microsoft.graph.processFileMetadata',
				identifier: 'f7af180f-dc2e-467c-9719-757e1c61eabf',
				content: {
				'@odata.type': '#microsoft.graph.textContent',
					data: 'Base64 encoded content'
				},
				name: 'Test File.docx',
				correlationId: 'd63eafd2-e3a9-4c1a-b726-a2e9b9d95822',
				createdDateTime: '2024-07-23T01:31:40.2020463Z',
				modifiedDateTime: '2024-09-17T13:45:21.0000000Z',
				correlationId: '9d84223c-521c-42f4-8f35-3cdeabe515d3',
				length: 17352,
				isTruncated: false,
				ownerId: 'ffe1ca70-6e5b-4120-abf0-472034ba05d4',
				customProperties: {
					Department: 'Finance',
					ReviewerName: 'John Smith'
				}
			}
		],
		activityMetadata: {
			activity: 'uploadFile'
		},
		deviceMetadata: {
			deviceType: 'unmanaged',
			operatingSystemSpecifications: {
				operatingSystemPlatform: 'Windows',
				operatingSystemVersion: '11.1'
			}
		},
		integratedAppMetadata: {
			name: 'Network Proxy App',
			version: '1.0.0'
		},
		protectedAppMetadata: {
			name: 'My App',
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