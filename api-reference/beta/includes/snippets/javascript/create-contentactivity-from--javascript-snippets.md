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
             identifier: '68fa951a-898a-4427-8e9e-6f8c05e9fe2b',
             name: 'API Explorer message',
             correlationId: '559a2343-7aa2-4912-93fe-72c47b2706ed',
             sequenceNo: 0, 
             isTruncated: false,
             createdDateTime: '2025-04-28T20:17:55',
             modifiedDateTime: '2025-04-28T20:17:55'
          }
       ],
       activityMetadata: { 
          activity: 'uploadText'
       },
       deviceMetadata: {
          deviceType: 'unmanaged',
          operatingSystemSpecifications: {
             operatingSystemPlatform: 'Windows 11',
             operatingSystemVersion: '10.0.26100.0' 
          }
       },
       integratedAppMetadata: {
          name: 'API Explorer',
          version: '0.1' 
       },
       userId: '7c2f8f10-cba8-4a8d-9449-db4b76d17390',
       scopeIdentifier: '0'
    }
};

await client.api('/me/dataSecurityAndGovernance/activities/contentActivities')
	.version('beta')
	.post(contentActivity);

```