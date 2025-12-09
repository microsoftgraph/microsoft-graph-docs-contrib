---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
  body: {
    contentType: 'html',
    content: 'Testing with file share link. <attachment id=\"668f7fa8-8129-4de7-b32b-fe1b442e6ef1\"></attachment>'
  },
  attachments: [
    {
      id: '668f7fa8-8129-4de7-b32b-fe1b442e6ef1',
      contentType: 'reference',
      contentUrl: 'https://teamsgraph-my.sharepoint.com/:w:/g/personal/test_teamsgraph_onmicrosoft_com/Eah_j2YpgedNsyv-G0QubvEBma6Sd_76UtYkXwoJ-nYVEg?e=0H2Ibm'
    }
  ]
};

await client.api('/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19:e28d1f9b354f4de88d2e9e4d8b983763@thread.tacv2/messages')
	.post(chatMessage);

```