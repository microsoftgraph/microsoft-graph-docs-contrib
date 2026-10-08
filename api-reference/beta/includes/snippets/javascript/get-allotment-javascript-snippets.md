---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let allotment = await client.api('/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi')
	.version('beta')
	.get();

```