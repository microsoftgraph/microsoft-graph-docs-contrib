---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllTranscripts = await client.api('/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts')
	.filter('MeetingOrganizer/User/Id eq \'8b081ef6-4792-4def-b2c9-c363a1bf41d5\'')
	.get();

```