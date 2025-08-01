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
             '@odata.type': 'microsoft.graph.processConversationMetadata',
             identifier: '07785517-9081-4fe7-a9dc-85bcdf5e9075',
             content: {
                '@odata.type': 'microsoft.graph.textContent', 
                data: 'Write an acceptance letter for Alex Wilber with Credit card number 4532667785213500, ssn: 120-98-1437 at One Microsoft Way, Redmond, WA 98052'
             },
             name: 'PC Purview API Explorer message',
             correlationId: 'd63eafd2-e3a9-4c1a-b726-a2e9b9d9580d',
             sequenceNumber: 0, 
             isTruncated: false,
             createdDateTime: '2025-05-27T17:23:20',
             modifiedDateTime: '2025-05-27T17:23:20'
          }
       ],
       activityMetadata: { 
          activity: 'uploadText'
       },
       deviceMetadata: {
          deviceType: 'Unmanaged',
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

await client.api('/me/dataSecurityAndGovernance/processContent')
	.post(processContentResponse);

```