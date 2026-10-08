---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customAuthenticationExtension = {
  '@odata.type': '#microsoft.graph.onVerifiedIdClaimValidationCustomExtension',
  displayName: 'Verified ID Claim Validation',
  description: 'Validate claims from a Verified ID presentation',
  endpointConfiguration: {
    '@odata.type': '#microsoft.graph.httpRequestEndpoint',
    targetUrl: 'https://contoso.azurewebsites.net/api/verifiedIdClaimValidation'
  },
  authenticationConfiguration: {
    '@odata.type': '#microsoft.graph.azureAdTokenAuthentication',
    resourceId: 'api://contoso.azurewebsites.net/verifiedIdClaimValidation'
  },
  clientConfiguration: {
    timeoutInMilliseconds: 2000,
    maximumRetries: 1
  },
  behaviorOnError: {
    '@odata.type': '#microsoft.graph.customExtensionBehaviorOnError'
  }
};

await client.api('/identity/customAuthenticationExtensions')
	.version('beta')
	.post(customAuthenticationExtension);

```