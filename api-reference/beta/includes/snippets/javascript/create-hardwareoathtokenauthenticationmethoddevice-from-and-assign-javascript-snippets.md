---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const hardwareOathTokenAuthenticationMethodDevice = {
  displayName: 'Token 1',
  serialNumber: 'TOTP123456',
  manufacturer: 'Contoso',
  model: 'Hardware Token 1000',
  secretKey: '6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB',
  timeIntervalInSeconds: 30,
  hashFunction: 'hmacsha1',
  assignTo: {
    id: '0cadbf92-####-####-####-############'
    }
};

await client.api('/directory/authenticationMethodDevices/hardwareOathDevices')
	.version('beta')
	.post(hardwareOathTokenAuthenticationMethodDevice);

```