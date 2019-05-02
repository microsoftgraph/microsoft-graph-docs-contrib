
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/messages')
	.version('beta')
	.filter('MentionsPreview/IsMentioned eq true,')
	.select('subject,sender,receivedDateTime,mentionsPreview')
	.get();

```