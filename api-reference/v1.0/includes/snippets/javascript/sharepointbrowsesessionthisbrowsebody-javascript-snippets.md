---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browseQueryResponseItem = {
    browseLocationItemKey: 'f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e',
    browseResourceType: 'site'
};

await client.api('/solutions/backupRestore/sharePointBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse')
	.post(browseQueryResponseItem);

```