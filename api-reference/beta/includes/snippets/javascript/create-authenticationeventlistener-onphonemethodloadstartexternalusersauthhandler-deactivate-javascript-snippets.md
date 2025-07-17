---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
    '@odata.type': '#microsoft.graph.onPhoneMethodLoadStartListener',  
    conditions: {  
        applications: {  
            includeApplications: [  
                '3dfff01b-0afb-4a07-967f-d1ccbd81102a'  
            ]  
        }  
    },  
    priority: 500,  
    handler: {  
        '@odata.type': '#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler',
        smsOptions: { 
            includeAdditionalRegions: [], 
            excludeRegions: [1001, 99, 777] 
        }
    } 
};

await client.api('/identity/authenticationEventListeners')
	.post(authenticationEventListener);

```