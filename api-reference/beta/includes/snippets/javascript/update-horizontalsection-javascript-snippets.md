---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const horizontalSection = {
  emphasis: 'strong',
  layout: 'twoColumns',
};

await client.api('/sites/{site-id}/pages/{page-id}/canvasLayout/horizontalSections/{horizontalSectionId}')
	.version('beta')
	.update(horizontalSection);

```