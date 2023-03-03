---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let team = await client.api('/teamwork/teamTemplates/com.microsoft.teams.template.ManageAProject/definitions/Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNlbi1VUw==/teamDefinition')
	.version('beta')
	.get();

```