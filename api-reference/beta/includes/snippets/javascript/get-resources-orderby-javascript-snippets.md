---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/131eeaaa-829e-4c6c-9cf3-491b1320fe4d/submissions/603e719d-4bcd-7b78-be60-1194b3921b50/resources')
	.version('beta')
	.orderby('resource/createdDateTime')
	.get();

```