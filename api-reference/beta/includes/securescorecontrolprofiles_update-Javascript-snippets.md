
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const secureScoreControlProfile = {
  controlStateUpdates: "controlStateUpdates-value"
};

let res = await client.api('/security/secureScoreControlProfiles/AdminMFA')
	.version('beta')
	.update({secureScoreControlProfile : secureScoreControlProfile});

```