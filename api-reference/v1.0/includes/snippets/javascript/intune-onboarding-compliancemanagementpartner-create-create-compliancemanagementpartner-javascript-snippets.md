---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const complianceManagementPartner = {
  '@odata.type': '#microsoft.graph.complianceManagementPartner',
  lastHeartbeatDateTime: '2016-12-31T23:59:37.9174975-08:00',
  partnerState: 'unavailable',
  displayName: 'Display Name value',
  macOsOnboarded: true,
  androidOnboarded: true,
  iosOnboarded: true,
  macOsEnrollmentAssignments: [
    {
      '@odata.type': 'microsoft.graph.complianceManagementPartnerAssignment',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ],
  androidEnrollmentAssignments: [
    {
      '@odata.type': 'microsoft.graph.complianceManagementPartnerAssignment',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ],
  iosEnrollmentAssignments: [
    {
      '@odata.type': 'microsoft.graph.complianceManagementPartnerAssignment',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ]
};

await client.api('/deviceManagement/complianceManagementPartners')
	.post(complianceManagementPartner);

```