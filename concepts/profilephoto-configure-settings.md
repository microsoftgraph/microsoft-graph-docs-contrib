---
title: "Manage user profile photo settings in Microsoft 365 by using Microsoft Graph"
description: "How admins can set where photos can be changed by the user"
author: "shivanioslo"
ms.author: "shivansingh"
ms.topic: concept-article
ms.localizationpriority: medium
---

#  Manage user profile photo settings in Microsoft 365 by using Microsoft Graph

Using the Microsoft Graph API, Global Administrators can get and configure photo update settings in an organization. This includes controlling the environment where user profile photos can be updated within the organization and which roles are required in order to update profile
user photos within the organization.

## Configure the user profile photo environment 

For hybrid tenants, user accounts can be synced from on-premises Microsoft Entra ID to the cloud via [directory sync](/azure/active-directory/architecture/sync-directory). To determine whether you have a hybrid environment, see [Determine your identity model](/microsoft-365/enterprise/deploy-identity-solution-identity-model?view=o365-worldwide). For hybrid tenants, Global Administrators can configure whether user profile photo updates made on-premises sync to the cloud, or whether user profile photo updates are made from the cloud only.

Configuration of user profile photo updates does not impact other user account properties. Also, this configuration does not affect existing user profile photos in the cloud or on-premises.

### Cloud environment

Hybrid tenants that use the cloud for user profile photos don't sync on-premises user profile photos to the cloud. User profile photos can be updated through Entra ID or Microsoft Graph; for more information, see
[Change user profile photos](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/change-user-profile-photos). For tenants that select this configuration, an additional option to disable user profile photo updates is available. 

Configuring this option does not remove on-premises photos that are stored in Entra ID or sync cloud photos to on-premises. If you select this option, tenant admins should remove the
Entra ID user profile photos by using Exchange PowerShell cmdlets. For more information, see [Remove-UserPhoto](/powershell/module/exchange/remove-userphoto)
document.  

### On-premises environment

Hybrid tenants that select on-premises as their user profile photo
master will continue to have user profile photos synced from on-premises
to the cloud, such that user profile photo updates will be visible
across Microsoft 365 products. Updates through cloud services will be
disabled for both admins and users. The option of disabling user profile
options is not available for this option since user profile photos
on-premises 

**Important**

When you update photo update settings, it can take up to 24 hours for
the changes to reflect throughout Microsoft 365. For example, if you
block cloud user profile photo updates, it can take up to 24 hours
before the users are blocked from making updates.

## Retrieve the current photo update settings

To get photo update settings configuration for an organization, use the
following command:
```http
GET https://graph.microsoft.com/beta/admin/people/photoupdatesettings
```
If successful, the response returns a 200 OK response code and
a photoUpdateSettings object in the response body.

```http
HTTP/1.1 200 OK

Content-Type: application/json

{

    "source": "cloud",

    "allowedRoles": null

}
```

## Configure Cloud User Profile Photo Environment

Use the update operation to configure the cloud user profile environment
in your organization. With the following operation, all users within the
organization are enabled to update the user profile photo in the cloud
environment.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{

    "source": "cloud",

    "allowedRoles": null

}
```

If successful, the response returns a 200 OK response code and
a photoUpdateSettings object in the response body.
```http
HTTP/1.1 200 OK

Content-Type: application/json

{

    "source": "cloud",

    "allowedRoles": null

}
```
## Block Users from changing their user profile photos 

For tenants that select cloud configuration, an additional option is
available to set which roles are required to update profile user photos
within the organization.

### Global Administrator

Use the update operation to configure Global Administrator only profile
photo update support in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    "source": "cloud",

    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10"]

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    "source": "cloud",

    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10"]

}
```
### User Administrator

Use the update operation to configure User Administrator only profile
photo update support in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    "source": "cloud",

    "allowedRoles": [" fe930be7-5e62-47db-91af-98c3a49a38b1"]

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    "source": "cloud",

    "allowedRoles": [" fe930be7-5e62-47db-91af-98c3a49a38b1"]

}
```
### Global Administrator and User Administrator

Use the update operation to configure Global Administrator and User
Administrator profile photo support in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    "source": "cloud",

    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10",
"fe930be7-5e62-47db-91af-98c3a49a38b1"]

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    "source": "cloud",

    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10",
"fe930be7-5e62-47db-91af-98c3a49a38b1"]

}
```
## Configure On-Premises User Profile Photo Environment

Use the update operation to configure the on-premises user profile
environment in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    "source": "onpremises",

    "allowedRoles": null

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    "source": "onPremises",

    "allowedRoles": null

}
```
