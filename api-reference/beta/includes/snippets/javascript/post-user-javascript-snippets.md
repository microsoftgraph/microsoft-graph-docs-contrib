---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const provisioningFlow = {
    '@odata.type': '#microsoft.graph.industryData.userProvisioningFlow',
    createUnmatchedUsers: true,
    managementOptions: 
    {
        additionalAttributes: ['userGradeLevel'],
        additionalOptions: 
        {
            markAllStudentsAsMinors: true,
            allowStudentContactAssociation: false
        }
    },
    creationOptions: 
    {
        configurations: [
          {
            'roleGroup@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/roleGroups/staff',
            defaultPasswordSettings: 
            {
              '@odata.type': '#microsoft.graph.industryData.simplePasswordSettings',
              password: '********'
            },
            licenseSkus: [ 'Sku1']
          },
          {
            'roleGroup@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/roleGroups/students',
            defaultPasswordSettings: 
            {
              '@odata.type': '#microsoft.graph.industryData.simplePasswordSettings',
              password: '********'
            },
            licenseSkus: [ 'Sku2']
          }
        ]
    }
};

await client.api('/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows')
	.version('beta')
	.post(provisioningFlow);

```