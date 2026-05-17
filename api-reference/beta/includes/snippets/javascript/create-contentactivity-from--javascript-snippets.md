---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentActivity = {
    contentToProcess: {
       contentEntries: [
          {
             '@odata.type': 'microsoft.graph.processConversationMetadata',
             identifier: '07785517-9081-4fe7-a9dc-85bcdf5e9075',
             name: 'PC Purview API Explorer message',
             correlationId: 'd63eafd2-e3a9-4c1a-b726-a2e9b9d9580d',
             sequenceNumber: 0, 
             isTruncated: false,
             createdDateTime: '2025-05-27T17:23:20',
             modifiedDateTime: '2025-05-27T17:23:20',
             agents: [
              {
                identifier: 'b262a092-6a2b-4682-9c7f-00baf80dbd84',
                name: 'Copilot Agent',
                version: '1.2',
                blueprintId: 'c262a092-6a2b-4682-9c7f-00baf80dbd94'
              }
            ],
            plugins: [
              {
                identifier: 'f1a2b3c4-d5e6-7890-abcd-ef1234567890',
                name: 'Microsoft Purview Data Scanner',
                version: '1.1'
              }
            ],
            accessedResources_v2: [
              {
                identifier: '3f2d6e5b-98d4-4f2a-9a61-45c0a8b7d123',
                name: 'Report.xlsx',
                url: 'https://contoso.sharepoint.com/sites/finance',
                labelId: 'a7b4f8c9-1e2d-4f45-89b1-23456789abcd',
                accessType: 'read',
                status: 'success',
                isCrossPromptInjectionDetected: false
              }
            ]
          }
       ],
       activityMetadata: { 
          activity: 'uploadText'
       },
       deviceMetadata: {
          operatingSystemSpecifications: {
             operatingSystemPlatform: 'Windows 11',
             operatingSystemVersion: '10.0.26100.0' 
          },
          ipAddress: '127.0.0.1'
       },
       protectedAppMetadata: {
          name: 'PC Purview API Explorer',
          version: '0.2',
          applicationLocation: {
             '@odata.type': 'microsoft.graph.policyLocationApplication',
             value: '83ef208a-0396-4893-9d4f-d36efbffc8bd'
          }
       },
       integratedAppMetadata: {
          name: 'PC Purview API Explorer',
          version: '0.2' 
       }
    }
};

await client.api('/me/dataSecurityAndGovernance/activities/contentActivities')
	.version('beta')
	.post(contentActivity);

```