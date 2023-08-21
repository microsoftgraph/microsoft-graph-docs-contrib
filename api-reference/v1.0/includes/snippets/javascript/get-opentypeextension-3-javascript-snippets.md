---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let message = await client.api('/me/messages/AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')
	.expand('extensions($filter=id eq \'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral\')')
	.get();

```