---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const informationProtectionAction = {
    contentInfo: {
        '@odata.type': '#microsoft.graph.security.contentInfo',
        'format@odata.type': '#microsoft.graph.security.contentFormat',
        format: 'default',
        contentFormat: 'File',
        identifier: 'c:\\user\\new.docx',
        'state@odata.type': '#microsoft.graph.security.contentState',
        state: 'rest',
        metadata: []
    },
    classificationResults: [
        {
            sensitiveTypeId: '50842eb7-edc8-4019-85dd-5a5c1f2bb085', //Credit Card 
            count: 7,
            confidenceLevel: 99
        }
    ]
};

await client.api('/users/bob@contoso.com/security/informationProtection/sensitivityLabels/evaluateClassificationResults')
	.version('beta')
	.post(informationProtectionAction);

```