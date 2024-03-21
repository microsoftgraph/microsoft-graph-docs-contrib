---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customAuthenticationExtension = {
    '@odata.type': '#microsoft.graph.onAttributeCollectionSubmitCustomExtension',
    displayName: 'attributeCollectionSubmitName',
    description: 'example description',
    authenticationConfiguration: {
        '@odata.type': '#microsoft.graph.azureAdTokenAuthentication',
        resourceId: 'api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e'
    },
    endpointConfiguration: {
        '@odata.type': '#microsoft.graph.httpRequestEndpoint',
        targetUrl: 'https://contoso.com'
    },
    clientConfiguration: {
        timeoutInMilliseconds: 2000,
        maximumRetries: 1
    }
};

await client.api('/identity/customAuthenticationExtensions')
	.version('beta')
	.post(customAuthenticationExtension);

```