---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const whatIfAnalysisResult = {
    signInIdentity: {
        '@odata.type': '#microsoft.graph.userSignIn',
        userId: '15dc174b-f34c-4588-ac45-61d6e05dce93'
    },
    signInContext: {
        '@odata.type': '#microsoft.graph.userActionContext',
        userAction: 'registerSecurityInformation'
    },
    signInConditions: {
        devicePlatform: 'macOS',
        clientAppType: 'browser',
        signInRiskLevel: 'low',
        userRiskLevel: 'high',
        servicePrincipalRiskLevel: 'none',
        country: 'CA',
        ipAddress: '40.77.182.32',
        insiderRiskLevel: 'minor',
        authenticationFlow: {
            transferMethod: 'deviceCodeFlow'
        },
        deviceInfo: {
            trustType: 'EntraID'
        }
    },
    appliedPoliciesOnly: true
};

await client.api('/identity/conditionalAccess/evaluate')
	.version('beta')
	.post(whatIfAnalysisResult);

```