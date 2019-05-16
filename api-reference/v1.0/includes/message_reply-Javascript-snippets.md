
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reply = {
  comment: "comment-value"
};

let res = await client.api('/me/messages/{id}/reply')
	.post(reply);

```