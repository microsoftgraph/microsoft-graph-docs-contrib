---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Represents a Microsoft Entra authentication context class reference. Authentication context class references are custom values that define a Conditional Access authentication requirement


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Key | String | Identifier used to reference the authentication context class. The id is used to trigger step-up authentication for the referenced authentication requirements and is the value that is issued in the ACRS (Authentication Context Class Reference) claim of an access token. This value in the claim is used to verify that the required authentication context is satisfied. The allowed values are c1 through c25. | `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `c11`, `c12`, `c13`, `c14`, `c15`, `c16`, `c17`, `c18`, `c19`, `c20`, `c21`, `c22`, `c23`, `c24`, `c25` |
| DisplayName | Write | String | A friendly name that identifies the authenticationContextClassReference object when building user-facing admin experiences. For example, a selection UX | - |
| Description | Write | String | A short explanation of the policies that are enforced by authenticationContextClassReference. This value should be used to provide secondary text to describe the authentication context class reference when building user-facing admin experiences. For example, a selection UX. | - |
| IsAvailable | Write | Boolean | Indicates whether the authenticationContextClassReference is published by the security admin and is ready for use by apps. When it's set to false, it shouldn't be shown in admin UX experiences because the value isn't currently available for selection. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Authentication Policy Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Policy.Read.ConditionalAccess |
| Update    | Policy.ReadWrite.ConditionalAccess |



