---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const horizontalSection = {
  emphasis: 'soft',
  layout: 'oneColumn',
  id: '3',
  columns: [
    {
      id: '1',
      width: 12,
      webparts: [
        {
          id: '20a69b85-529c-41f3-850e-c93458aa74eb',
          innerHtml: '<p>sample text in text web part</p>'
        }
      ]
    }
  ]
};

await client.api('/sites/{site-id}/pages/{page-id}/canvasLayout/horizontalSections')
	.version('beta')
	.post(horizontalSection);

```