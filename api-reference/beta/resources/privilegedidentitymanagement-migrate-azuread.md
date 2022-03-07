---
title: "Privileged Identity Management - Azure AD - Migrate"
description: "Migrate to Role Management Privileged Identity Management to manage Azure Active Directory roles."
ms.localizationpriority: high
author: "amansw"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Privileged Identity Management - Azure AD - Migrate to role management

Namespace: microsoft.graph

The Graph APIs for Azure AD Privileged Identity Management to manage Azure resources will be deprecated soon. Use this doc to migrate your existing APIs to the [role management](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true) API.

## Migrate to Azure role management

The following table describes how the [role management](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true) APIs map to the existing APIs.

| Operation | Existing API | Role management Equivalent |
| --------- | ------------ | -------------- |
| List role definitions | [List privilegedRoles](/graph/api/privilegedrole-list) | [List unifiedRoleDefinitions](/graph/api/rbacapplication-list-roledefinitions) |
| Manage Role Settings | [Get privilegedRoleSettings](/graph/api/privilegedrolesettings-get)<br/>[Update privilegedRoleSettings](/graph/api/privilegedrolesettings-update) | [Manage policies](/graph/api/unifiedrolemanagementpolicy-list)
| Create role assignment requests | [Create privilegedRoleAssignmentRequest](/graph/api/privilegedroleassignmentrequest-post) | Use [Create unifiedRoleEligibilityScheduleRequest](/graph/api/unifiedroleeligibilityschedulerequest-post-unifiedroleeligibilityschedulerequests) to create eligible role assignments<br/>Use [Create unifiedRoleAssignmentScheduleRequest](/graph/api/unifiedroleassignmentschedulerequest-post-unifiedroleassignmentschedulerequests) to create active role assignments |
| List role assignments | [List privilegedRoleAssignments](/graph/api/privilegedroleassignment-list) | Use [List unifiedRoleEligibilityScheduleInstances](/graph/api/unifiedroleeligibilityscheduleinstance-list) to get eligible role assignments<br/>Use [List unifiedRoleAssignmentScheduleInstances](/graph/api/unifiedroleassignmentscheduleinstance-list) to get active role assignments |
