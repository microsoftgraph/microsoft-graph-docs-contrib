---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {

    'templateDefinition@odata.bind': 'https://graph.microsoft.com/beta/teamwork/teamTemplates/com.microsoft.teams.template.ManageAProject/definitions/Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNhci1TQQ==',

    displayName: 'My Sample Team',

    description: 'My Sample Team’s Description'

};

await client.api('/teams')
	.version('beta')
	.post(team);

```