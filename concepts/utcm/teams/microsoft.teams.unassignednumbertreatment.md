---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Creates a new treatment for how calls to an unassigned number range should be routed. The call can be routed to a user, an application or to an announcement service where a custom message will be played to the caller.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Id of the treatment. | - |
| Description | Write | String | Free format description of this treatment. | - |
| Pattern | Write | String | A regular expression that the called number must match in order for the treatment to take effect. It's best pratice to start the regular expression with the hat character and end it with the dollar character. You can use various regular expression test sites on the Internet to validate the expression. | - |
| Target | Write | String | The identity of the destination the call should be routed to. Depending on the TargetType it should either be the ObjectId of the user or application instance/resource account or the AudioFileId of the uploaded audio file. | - |
| TargetType | Write | String | The type of target used for the treatment. Allowed values are User, ResourceAccount and Announcement. | `User`, `ResourceAccount`, `Announcement` |
| TreatmentPriority | Write | UInt32 | The priority of the treatment. Used to distinguish identical patterns. The lower the priority the higher preference. The priority needs to be unique. | - |
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



