---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const provisioningFlow = {
    '@odata.type': '#microsoft.graph.industryData.classGroupProvisioningFlow',
    configuration: {
        '@odata.type': '#microsoft.graph.industryData.classGroupConfiguration',
        additionalAttributes: [
            'courseTitle',
            'courseCode'
        ],
        additionalOptions: {
            '@odata.type': '#microsoft.graph.industryData.additionalClassGroupOptions',
            createTeam: false,
            writeDisplayNameOnCreateOnly: false
        },
        enrollmentMappings: {
            '@odata.type': '#microsoft.graph.industryData.enrollmentMappings',
            memberEnrollmentMappings: [
                {
                    '@odata.type': '#microsoft.graph.industryData.sectionRoleReferenceValue',
                    code: 'substitute'
                }
            ],
            ownerEnrollmentMappings: [
                {
                    '@odata.type': '#microsoft.graph.industryData.sectionRoleReferenceValue',
                    code: 'teacher'
                }
            ]
        }
    }
};

await client.api('/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/417a82c8-7caa-4f82-3ac6-08dc4ac6fb7f')
	.version('beta')
	.update(provisioningFlow);

```