---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationMember = {
    @odata.type: "#microsoft.graph.aadUserConversationMember",
    roles: [
        "owner"
    ],
    userId: "50dffbae-ad0f-428e-a86f-f53b0acfc641",
    displayName: "Cameron White",
    email: "CameronW@M365x987948.OnMicrosoft.com"
};

let res = await client.api('/teams/{id}/members')
	.version('beta')
	.post(conversationMember);

```