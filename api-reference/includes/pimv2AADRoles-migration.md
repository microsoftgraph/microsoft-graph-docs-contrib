---
author: japere
ms.topic: include
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### Migrate to PIM v3 API for Azure AD roles (role management APIs)

The PIM API for Azure AD roles has been retired and stopped returning data on May 31, 2021. Use this guidance to migrate your existing APIs to the new [role management](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true) API.

| Operation | PIM v2 API | Role management APIs (PIM v3) |
| --------- | ------------ | -------------- |
| List role definitions | [List privilegedRoles](/graph/api/privilegedrole-list) | [List unifiedRoleDefinitions](/graph/api/rbacapplication-list-roledefinitions) |
| Manage Role Settings | [Get privilegedRoleSettings](/graph/api/privilegedrolesettings-get)<br/>[Update privilegedRoleSettings](/graph/api/privilegedrolesettings-update) | [Manage policies](/graph/api/unifiedrolemanagementpolicy-list)
| Create role assignment requests | [Create privilegedRoleAssignmentRequest](/graph/api/privilegedroleassignmentrequest-post) | Use [Create unifiedRoleEligibilityScheduleRequest](/graph/api/unifiedroleeligibilityschedulerequest-post-unifiedroleeligibilityschedulerequests) to create eligible role assignments<br/><br/>Use [Create unifiedRoleAssignmentScheduleRequest](/graph/api/unifiedroleassignmentschedulerequest-post-unifiedroleassignmentschedulerequests) to create active role assignments |
| List role assignments | [List privilegedRoleAssignments](/graph/api/privilegedroleassignment-list) | Use [List unifiedRoleEligibilityScheduleInstances](/graph/api/unifiedroleeligibilityscheduleinstance-list) to get eligible role assignments<br/><br/>Use [List unifiedRoleAssignmentScheduleInstances](/graph/api/unifiedroleassignmentscheduleinstance-list) to get active role assignments |