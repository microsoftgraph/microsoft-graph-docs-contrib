---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const columnDefinition = {
   description: 'test',
   enforceUniqueValues: false,
   hidden: false,
   indexed: false,
   name: 'Title',
   text: {
      allowMultipleLines: false,
      appendChangesToExistingText: false,
      linesForEditing: 0,
      maxLength: 255
   }
};

await client.api('/sites/{site-id}/columns')
	.post(columnDefinition);

```