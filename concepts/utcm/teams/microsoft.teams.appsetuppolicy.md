---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Manages Teams app setup policies in your tenant.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identifier to be assigned to the new Teams app setup policy. Use the 'Global' Identity if you wish to assign this policy to the entire tenant. | - |
| Description | Write | String | Enables administrators to provide explanatory text to accompany a Teams app setup policy. | - |
| AppPresetList | Write | StringArray[] | Choose which apps and messaging extensions you want to be installed in your users' personal Teams environment and in meetings they create. Users can install other available apps from the Teams app store. | - |
| AppPresetMeetingList | Write | StringArray[] | Choose which apps and meeting extensions you want to be installed in your users' personal Teams environment and in meetings they create. Users can install other available apps from the Teams app store. | - |
| PinnedAppBarApps | Write | StringArray[] | Pinning an app displays the app in the app bar in Teams client. Admins can pin apps and they can allow users to pin apps. Pinning is used to highlight apps that are needed the most by users and promote ease of access. | - |
| PinnedMessageBarApps | Write | StringArray[] | Apps are pinned in messaging extensions and into the ellipsis menu. | - |
| AllowUserPinning | Write | Boolean | If you turn this on, the user's existing app pins will be added to the list of pinned apps set in this policy. Users can rearrange, add, and remove pins as they choose. If you turn this off, the user's existing app pins will be removed and replaced with the apps defined in this policy. | - |
| AllowSideLoading | Write | Boolean | This is also known as side loading. This setting determines if a user can upload a custom app package in the Teams app. Turning it on lets you create or develop a custom app to be used personally or across your organization without having to submit it to the Teams app store. Uploading a custom app also lets you test an app before you distribute it more widely by only assigning it to a single user or group of users. | - |
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



