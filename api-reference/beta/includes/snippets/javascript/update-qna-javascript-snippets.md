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

await client.api('/search/qnas/{qnaId}')
	.version('beta')
	.update(qna);

```