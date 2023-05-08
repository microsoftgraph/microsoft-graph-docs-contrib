---
author: japere
ms.topic: include
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### Migrate to the Azure Resource Manager (ARM) PIM API for Azure resource roles

The PIM iteration 3 API to manage Azure resources is now available through the Azure Resource Manager (ARM) REST API. Use this guidance to migrate your existing APIs to the new [Azure Resource Manager (ARM) APIs](/rest/api/authorization/privileged-role-eligibility-rest-sample).

The following table describes how the new ARM APIs map to the existing APIs.

| Operation | Microsoft Graph API (iteration 2) | ARM API (iteration 3) |
| --------- | ------------ | -------------- |
| Register a resource | [Register](/graph/api/governanceresource-register) | ARM doesn't require resources to be explicitly registered or onboarded to be managed. You can perform operations by directly using the resource scope. |
| List role definitions | [List Role definitions](/graph/api/governanceroledefinition-list) | [Role Definitions - List](/rest/api/authorization/role-definitions/list) |
| Create role assignment requests | [Create governanceRoleAssignmentRequest](/graph/api/governanceroleassignmentrequest-post) | Use [Role Eligibility Schedule Requests - Create](/rest/api/authorization/role-eligibility-schedule-requests/create) to create eligible role assignments<br/><br/>Use [Role Assignment Schedule Requests - Create](/rest/api/authorization/role-assignment-schedule-requests/create) to create active role assignments |
| List role assignments | [List governanceRoleAssignments](/graph/api/governanceroleassignment-list) | Use [Role Eligibility Schedule Instances - List](/rest/api/authorization/role-eligibility-schedule-instances/list-for-scope) to get eligible role assignments<br/><br/>Use [Role Assignment Schedule Instances - List](/rest/api/authorization/role-assignment-schedule-instances/list-for-scope) to get active role assignments |
| Manage Role Settings | [List governanceRoleSettings](/graph/api/governancerolesetting-list)<br/>[Update governanceRoleSetting](/graph/api/governancerolesetting-update) | [Manage policies through ARM](/rest/api/authorization/privileged-role-policy-rest-sample)