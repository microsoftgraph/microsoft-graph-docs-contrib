---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentPolicy = {
  displayName: 'New Policy',
  description: 'policy for assignment',
  allowedTargetScope: 'notSpecified',
  specificAllowedTargets: [],
  expiration: {
      endDateTime: null,
      duration: null,
      type: 'noExpiration'
  },
  requestorSettings: {
      enableTargetsToSelfAddAccess: false,
      enableTargetsToSelfUpdateAccess: false,
      enableTargetsToSelfRemoveAccess: false,
      allowCustomAssignmentSchedule: true,
      enableOnBehalfRequestorsToAddAccess: false,
      enableOnBehalfRequestorsToUpdateAccess: false,
      enableOnBehalfRequestorsToRemoveAccess: false,
      onBehalfRequestors: []
  },
  requestApprovalSettings: {
      isApprovalRequiredForAdd: false,
      isApprovalRequiredForUpdate: false,
      stages: []
  },
  accessPackage: {
      id: 'a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b'
  }
};

await client.api('/identityGovernance/entitlementManagement/assignmentPolicies')
	.post(accessPackageAssignmentPolicy);

```