---
title: "Privileged Identity Management - Azure resources - Migrate"
description: "APIs for Azure AD Privileged Identity Management to manage Azure resources."
ms.localizationpriority: high
author: "amansw"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Privileged Identity Management - Azure resources

Namespace: microsoft.graph

The Graph APIs for Azure AD Privileged Identity Management to manage Azure resources will be deprecated soon. Use this doc to migrate your existing APIs to the new [Azure Resource Manager (ARM) APIs](/rest/api/authorization/privileged-role-eligibility-rest-sample).

## Migrate to Azure Resource Manager (ARM)

The following table describes how the new ARM APIs map to the existing APIs.

| Operation | Existing API | ARM Equivalent |
| --------- | ------------ | -------------- |
| Register a resource | [Register](../api/governanceresource-register.md) | Resources do not need to be explicitly registered or onboard to manage through ARM. You can perform operations by directly using the resource scope. |
| List role definitions | [List Role definitions](../api/governanceroledefinition-list) | [Role Definitions - List](/rest/api/authorization/role-definitions/list) |
| Create role assignment requests | [Create governanceRoleAssignmentRequest](../api/governanceroleassignmentrequest-post) | Use [Role Eligibility Schedule Requests - Create](/rest/api/authorization/role-eligibility-schedule-requests/create) to create eligible role assignments<br/>Use [Role Assignment Schedule Requests - Create](/rest/api/authorization/role-assignment-schedule-requests/create) to create active role assignments |
| List role assignments | [List governanceRoleAssignments](../api/governanceroleassignment-list) | Use [Role Eligibility Schedule Instances - List](/rest/api/authorization/role-eligibility-schedule-instances/list-for-scope) to get eligible role assignments<br/>Use [Role Assignment Schedule Instances - List](/rest/api/authorization/role-assignment-schedule-instances/list-for-scope) to get active role assignments |
| Manage Role Settings | [List governanceRoleSettings](../api/governancerolesetting-list)<br/>[Update governanceRoleSetting](../api/governancerolesetting-update) | [Manage policies through ARM](/rest/api/authorization/privileged-role-policy-rest-sample)