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
          identifier: '42837765-85c9-4a28-a165-27b6aaa5f635',
          content: {
            '@odata.type': 'microsoft.graph.textContent',
            data: 'For application 123456789, Write an acceptance letter for Alex Wilber with Credit card number 0000111122223333, ssn: 000-11-2222 at One Microsoft Way, Redmond, WA 98052'
          },
          agents: [
            {
              '@odata.type': 'microsoft.graph.aiAgentInfo',
              blueprintId: 'c84571c6-5ef3-4af7-aed2-0491cfd362a0',
              identifier: '89515a70-a236-43be-b977-3ff0b454f853',
              name: 'Demo Agent',
              version: '1.0'
            }
          ],
          name: 'PC Purview API Explorer message',
          correlationId: '1cd5e33a-c78f-46e4-a242-74b0ef910486',
          sequenceNumber: 0,
             isTruncated: false,
             createdDateTime: '2026-04-08T20:52:08',
             modifiedDateTime: '2026-04-08T20:52:08'
          }
       ],
       activityMetadata: { 
          activity: 'uploadText'
       },
       deviceMetadata: {
          operatingSystemSpecifications: {
             operatingSystemPlatform: 'Windows 11',
             operatingSystemVersion: '10.0.26200.0' 
          },
          ipAddress: '127.0.0.1'
       },
       protectedAppMetadata: {
          name: 'PC Purview API Explorer',
          version: '0.2',
          applicationLocation: {
             '@odata.type': 'microsoft.graph.policyLocationApplication',
             value: '83ef198a-0396-4893-9d4f-d36efbffc8bd'
          }
       },
       integratedAppMetadata: {
          name: 'PC Purview API Explorer',
          version: '0.1' 
       }
    }
};

await client.api('/users/{userId}/dataSecurityAndGovernance/processContent')
	.post(processContentResponse);

```