---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource is used to configure the Teams Guest Messaging Configuration.

More information: https://docs.microsoft.com/en-us/microsoftteams/set-up-guests


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The only valid input is Global - the tenant wide configuration | `Global` |
| AllowUserEditMessage | Write | Boolean | Determines if a user is allowed to edit their own messages. | - |
| AllowUserDeleteMessage | Write | Boolean | Determines if a user is allowed to delete their own messages. | - |
| AllowUserChat | Write | Boolean | Determines if a user is allowed to chat. | - |
| AllowUserDeleteChat | Write | Boolean | Turn this setting on to allow users to permanently delete their one-on-one chat, group chat, and meeting chat as participants (this deletes the chat only for them, not other users in the chat). | - |
| GiphyRatingType | Write | String | Determines Giphy content restrictions. Default value is Moderate, other options are Strict and NoRestriction. | `Moderate`, `Strict`, `NoRestriction` |
| AllowMemes | Write | Boolean | Determines if memes are available for use. | - |
| AllowStickers | Write | Boolean | Determines if stickers are available for use. | - |
| AllowGiphy | Write | Boolean | Determines if Giphy are available for use. | - |
| AllowImmersiveReader | Write | Boolean | Determines if Immersive Reader is enabled. | - |


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



