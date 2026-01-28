---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource is used to configure the [Teams Meeting Configuration](/microsoftteams/meeting-settings-in-teams).


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The only valid input is Global - the tenant wide configuration | `Global` |
| LogoURL | Write | String | URL to a logo image. This would be included in the meeting invite. Please ensure this URL is publicly accessible for invites that go beyond your federation boundaries. | - |
| LegalURL | Write | String | URL to a website containing legal information and meeting disclaimers. This would be included in the meeting invite. Please ensure this URL is publicly accessible for invites that go beyond your federation boundaries. | - |
| HelpURL | Write | String | URL to a website where users can obtain assistance on joining the meeting.This would be included in the meeting invite. Please ensure this URL is publicly accessible for invites that go beyond your federation boundaries. | - |
| CustomFooterText | Write | String | Text to be used on custom meeting invitations. | - |
| DisableAnonymousJoin | Write | Boolean | Determines whether anonymous users are blocked from joining meetings in the tenant. Set this to TRUE to block anonymous users from joining. Set this to FALSE to allow anonymous users to join meetings. | - |
| EnableQoS | Write | Boolean | Determines whether Quality of Service Marking for real-time media (audio, video, screen/app sharing) is enabled in the tenant. Set this to TRUE to enable and FALSE to disable. | - |
| ClientAudioPort | Write | UInt32 | Determines the starting port number for client audio. Minimum allowed value: 1024 Maximum allowed value: 65535 Default value: 50000. | - |
| ClientAudioPortRange | Write | UInt32 | Determines the total number of ports available for client audio. Default value is 20. | - |
| ClientVideoPort | Write | UInt32 | Determines the starting port number for client video. Minimum allowed value: 1024 Maximum allowed value: 65535 Default value: 50020. | - |
| ClientVideoPortRange | Write | UInt32 | Determines the total number of ports available for client video. Default value is 20. | - |
| ClientAppSharingPort | Write | UInt32 | Determines the starting port number for client screen sharing or application sharing. Minimum allowed value: 1024 Maximum allowed value: 65535 Default value: 50040. | - |
| ClientMediaPortRangeEnabled | Write | Boolean | Determines whether custom media port and range selections need to be enforced. When set to True, clients will use the specified port range for media traffic. When set to False (the default value) for any available port (from port 1024 through port 65535) will be used to accommodate media traffic. | - |
| ClientAppSharingPortRange | Write | UInt32 | Determines the total number of ports available for client sharing or application sharing. Default value is 20. | - |


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



