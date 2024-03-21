---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const adminTodo = {
  '@odata.type': '#microsoft.graph.adminTodo',
  settings: {
    '@odata.type': 'microsoft.graph.todoSettings',
    isPushNotificationEnabled: true,
    isExternalJoinEnabled: false,
    isExternalShareEnabled: true
  }
};

await client.api('/admin/todo')
	.version('beta')
	.update(adminTodo);

```