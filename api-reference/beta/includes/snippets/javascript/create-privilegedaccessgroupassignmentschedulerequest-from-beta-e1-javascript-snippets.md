---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const privilegedAccessGroupAssignmentScheduleRequest = {
  accessId: 'member', 
  principalId: '3cce9d87-3986-4f19-8335-7ed075408ca2', 
  groupId: '68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7', 
  action: 'adminAssign', 
  scheduleInfo: { 
      startDateTime: '2022-12-08T07:43:00.000Z', 
      expiration: { 
          type: 'afterDuration', 
          duration: 'PT2H' 
      } 
  }, 
  justification: 'Assign active member access.'
};

await client.api('/identityGovernance/privilegedAccess/group/assignmentScheduleRequests')
	.version('beta')
	.post(privilegedAccessGroupAssignmentScheduleRequest);

```