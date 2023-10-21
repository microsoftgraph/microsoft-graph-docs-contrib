---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userActivity = {
  activitySourceHost: 'https://contoso.com',
  createdDateTime: '2017-06-09T20:54:43.969Z',
  lastModifiedDateTime: '2017-06-09T20:54:43.969Z',
  id: '14332800362997268276',
  appActivityId: '/article?12345',
  status: 'updated',
  expirationDateTime: '2017-02-26T20:20:48.114Z',
  visualElements: {
    displayText: 'Contoso How-To: How to Tie a Reef Knot',
    description: 'How to Tie a Reef Knot. A step-by-step visual guide to the art of nautical knot-tying.',
    attribution: {
      iconUrl: 'https://www.contoso.com/icon',
      alternateText: 'Contoso Ltd',
      addImageQuery: false
    },
    backgroundColor: '#ff0000',
    content: {
      '$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
      type: 'AdaptiveCard',
      body: [
        {
          type: 'TextBlock',
          text: 'Contoso MainPage'
        }
      ]
    }
  }
};

await client.api('/me/activities/3F12345')
	.put(userActivity);

```