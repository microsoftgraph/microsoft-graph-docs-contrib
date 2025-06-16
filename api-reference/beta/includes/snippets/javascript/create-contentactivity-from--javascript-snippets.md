---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentActivity = {
    contentMetadata: {
       contentEntries: [
          {
             '@odata.type': 'microsoft.graph.processConversationMetadata',
             identifier: 'd6ab5054-e111-45c3-9fba-9f2a59c9bbf8',
             name: 'CA Purview API Explorer message',
             correlationId: 'edfb7f88-b963-4ef2-8b30-5cb90f80e01e',
             sequenceNumber: 0, 
             isTruncated: false,
             createdDateTime: '2025-05-28T20:20:37',
             modifiedDateTime: '2025-05-28T20:20:37'
          }
       ],
       activityMetadata: { 
          activity: 'downloadText'
       },
       deviceMetadata: {
          operatingSystemSpecifications: {
             operatingSystemPlatform: 'Windows 11',
             operatingSystemVersion: '10.0.26100.0' 
          }
       },
       integratedAppMetadata: {
          name: 'CA Purview API Explorer',
          version: '0.1' 
       },
       userId: '7c497f10-cba8-4a8d-9449-db4b76d1ef80',
       scopeIdentifier: '0'
    }
};

await client.api('/me/dataSecurityAndGovernance/activities/contentActivities')
	.version('beta')
	.post(contentActivity);

```