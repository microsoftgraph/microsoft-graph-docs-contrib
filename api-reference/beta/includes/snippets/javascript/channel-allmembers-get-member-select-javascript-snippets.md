---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conversationMember = await client.api('/teams/2ab9c796-2902-45f8-b712-7c5a63cf41c4/channels/19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2/allMembers/MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==')
	.version('beta')
	.select('id,displayName,roles')
	.get();

```