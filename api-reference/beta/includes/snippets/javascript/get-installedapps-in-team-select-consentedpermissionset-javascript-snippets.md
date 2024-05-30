---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsAppInstallation = await client.api('/teams/19[d86ec7f6b247d3b9e519b0bfef5d03@thread.v2/installedApps/N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')
	.version('beta')
	.select('consentedPermissionSet,id')
	.get();

```