---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activatewithscope = {
 subjects: [
  {
   id: 'abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa'
  },
  {
   id: 'abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb'
  }
 ]
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/2f0dcb02-65d9-4369-bad5-a3174538c5ff/activatewithscope')
	.version('beta')
	.post(activatewithscope);

```