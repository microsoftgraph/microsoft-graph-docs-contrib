---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Supervision Review Rule in Security and Compliance.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name for the supervisory review policy. The name can't exceed 64 characters. If the value contains spaces, enclose the value in quotation marks. | - |
| Policy | Key | String | The Policy parameter specifies the supervisory review policy that's assigned to the rule. You can use any value that uniquely identifies the policy. | - |
| Condition | Write | String | The Condition parameter specifies the conditions and exceptions for the rule. | - |
| SamplingRate | Write | UInt32 | The SamplingRate parameter specifies the percentage of communications for review. If you want reviewers to review all detected items, use the value 100. | - |
| Ensure | Write | String | Specify if this rule should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Compliance Administrator |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



