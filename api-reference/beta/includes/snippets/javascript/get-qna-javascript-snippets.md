---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let qna = await client.api('/search/qnas/{qnaId}')
	.version('beta')
	.get();

```