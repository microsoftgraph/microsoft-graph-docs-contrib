---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onOtpSendCustomExtension = {
  '@odata.type': 'microsoft.graph.onOtpSendCustomExtension',
  authenticationConfiguration: {
    '@odata.type': 'microsoft.graph.azureAdTokenAuthentication',
    resourceId:  'api://customonemailprovider.azurwebsites.net/f9c5dc6b-d72b-4226-8ccd-801f7a290428'
  },
  clientConfiguration: {
    timeoutInMilliseconds: 1000,
    maximumRetries: 1,
  },
  description: 'Sends OTP Code via ACS.',
  displayName: 'ACS Emails',
  endpointConfiguration: {
    '@odata.type': 'microsoft.graph.httpRequestEndpoint',
 	  targetUrl: 'https://customonemailprovider.azurewebsites.net/api/sendOneTimeCode'
  },
  behaviorOnError: {
    '@odata.type': 'microsoft.graph.customExtensionBehaviorOnError'
  }
};

await client.api('/identity/authenticationEventListeners/{listenerId}/microsoft.graph.onEmailOtpSendListener/handler/microsoft.graph.onOtpSendCustomExtensionHandler/customExtension/$ref')
	.version('beta')
	.put(onOtpSendCustomExtension);

```