---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const set = {
  '@odata.type': '#microsoft.graph.termStore.set',
  parentGroup: {
      id: 'fc733b51-10f1-40fd-b784-dc6d1e42804b'
   },
   localizedNames: [
      {
        languageTag: 'en-US',
        name: 'Department'
      }
  ]
};

await client.api('/sites/6a742cee-9216-4db5-8046-13a595684e74/termStore/sets')
	.post(set);

```