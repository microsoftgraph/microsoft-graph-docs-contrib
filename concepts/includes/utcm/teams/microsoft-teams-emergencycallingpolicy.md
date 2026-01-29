---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures the [Teams Emergency Calling Policies](/microsoftteams/manage-emergency-calling-policies).


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Emergency Calling Policy. | - |
| Description | Write | String | Description of the Teams Emergency Calling Policy. | - |
| EnhancedEmergencyServiceDisclaimer | Write | String | Allows the tenant administrator to configure a text string, which is shown at the top of the Calls app. | - |
| ExternalLocationLookupMode | Write | String | Enables ExternalLocationLookupMode. This mode allows users to set Emergency addresses for remote locations. | `Disabled`, `Enabled` |
| NotificationDialOutNumber | Write | String | This parameter represents PSTN number which can be dialed out if NotificationMode is set to either of the two Conference values. | - |
| NotificationGroup | Write | String | NotificationGroup is a email list of users and groups to be notified of an emergency call. | - |
| NotificationMode | Write | String | The type of conference experience for security desk notification. | `NotificationOnly`, `ConferenceMuted`, `ConferenceUnMuted` |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



