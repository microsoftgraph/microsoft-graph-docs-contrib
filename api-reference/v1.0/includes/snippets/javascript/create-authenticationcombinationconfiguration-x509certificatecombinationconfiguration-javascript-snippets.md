---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationCombinationConfiguration = {
    '@odata.type': '#microsoft.graph.x509CertificateCombinationConfiguration', 
    allowedIssuerSkis: [ 
        '9A4248C6AC8C2931AB2A86537818E92E7B6C97B6' 
    ], 
    allowedPolicyOIDs: [], 
    appliesToCombinations: [ 
        'x509CertificateSingleFactor ' 
    ] 
};

await client.api('/identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}/combinationConfigurations')
	.post(authenticationCombinationConfiguration);

```