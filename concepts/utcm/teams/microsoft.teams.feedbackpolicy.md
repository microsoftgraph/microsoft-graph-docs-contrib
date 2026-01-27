---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description


New-CsTeamsFeedbackPolicy [-Identity] <string> [-UserInitiatedMode <string>] [-ReceiveSurveysMode <string>] [-AllowScreenshotCollection <bool>] [-AllowEmailCollection <bool>] [-AllowLogCollection <bool>] [-EnableFeatureSuggestions <bool>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]



## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Specify the name of the Teams Feedback Policy. | - |
| UserInitiatedMode | Write | String | Specifies if users are allowed to give feedback. | - |
| ReceiveSurveysMode | Write | String | Specifies if users are allowed to receive the survey. | `Enabled`, `Disabled`, `EnabledUserOverride` |
| AllowScreenshotCollection | Write | Boolean | Specifies if Screenshot Collection is enabled or not. | - |
| AllowEmailCollection | Write | Boolean | Specifies if Email Collection is enabled or not. | - |
| AllowLogCollection | Write | Boolean | Specifies if Log Collection is enabled or not. | - |
| EnableFeatureSuggestions | Write | Boolean | Specifies if users are allowed to provide feature suggestions | - |
| Ensure | Write | String | Present ensures the instance exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



