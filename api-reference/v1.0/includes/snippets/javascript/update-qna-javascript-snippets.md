---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const qna = {
  description: 'The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.'
};

await client.api('/search/qnas/733b26d5-af76-4eea-ac69-1a0ce8716897')
	.update(qna);

```