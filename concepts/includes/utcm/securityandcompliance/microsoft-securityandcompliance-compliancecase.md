---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an eDiscovery Case in Security and Compliance.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name of the compliance case. | - |
| Description | Write | String | The description of the case. | - |
| Ensure | Write | String | Specify if this case should exist or not. | `Present`, `Absent` |
| Status | Write | String | Status for the case. Can either be 'Active' or 'Closed' | `Active`, `Closed` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Compliance Administrator |
| Update    | Compliance Administrator |


#### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



