---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let items = await client.api('/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/243bca4b-4e5e-45af-b37d-25f6135a740d/items?expand=fields(select=Name,Color,Quantity)')
	.version('beta')
	.get();

```