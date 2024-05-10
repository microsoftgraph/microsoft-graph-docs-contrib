---
title: "Manage user profile photo settings in Microsoft 365 by using Microsoft Graph"
description: "Learn how to configure where and how user profile photos are managed in your orgnaization."
author: "shivanioslo"
ms.author: "shivansingh"
ms.topic: concept-article
ms.localizationpriority: medium
---

#  Manage user profile photo settings in Microsoft 365 by using Microsoft Graph

Using the Microsoft Graph API, Global Administrators can get and configure photo update settings in an organization. This includes controlling the environment where user profile photos can be updated within the organization and which roles are required to update profile
user photos.

## Configure the user profile photo environment 

For hybrid tenants, user accounts can be synced from on-premises Microsoft Entra ID to the cloud via [directory sync](/azure/active-directory/architecture/sync-directory). To determine whether you have a hybrid environment, see [Determine your identity model](/microsoft-365/enterprise/deploy-identity-solution-identity-model?view=o365-worldwide). For hybrid tenants, Global Administrators can configure whether user profile photo updates made on-premises sync to the cloud, or whether user profile photo updates are made from the cloud only.

Configuration of user profile photo updates does not impact other user account properties. Also, this configuration does not affect existing user profile photos in the cloud or on-premises.

### Cloud environment

Hybrid tenant environments where user profile photos are stored in the cloud don't sync on-premises profile photos to the cloud. User profile photos can be updated through Entra ID or Microsoft Graph; for more information, see
[Change user profile photos](/microsoft-365/admin/add-users/change-user-profile-photos). For tenants that use this configuration, an option to disable user profile photo updates is available. 

Configuring this option does not remove on-premises photos that are stored in Entra ID or sync cloud photos to on-premises. If you select this option, tenant admins should remove the
Entra ID user profile photos by using Exchange PowerShell cmdlets. For more information, see [Remove-UserPhoto](/powershell/module/exchange/remove-userphoto).  

### On-premises environment

Hybrid tenants that store user profile photos on-premises continue to sync user profile photos from on-premises to the cloud, and user profile photo updates are visible
across Microsoft 365 products. Updates through cloud services are disabled for both admins and users. The option to disable user profile photos is not available when the photos are stored
on-premises.

> [!Important]
> When you update user profile photo settings, it can take up to 24 hours for the changes to be propagate to Microsoft 365. For example, if you block cloud user profile photo updates, it can take up to 24 hours for users to be blocked from making updates.

## Retrieve the current photo update settings

The following example shows how to get the photo update settings configuration for an organization.

```http
GET https://graph.microsoft.com/beta/admin/people/photoupdatesettings
```
If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK

Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": null
}
```

## Configure the cloud user profile photo environment

Use the update operation to configure the cloud user profile environment in your organization. The following example shows how to enable all users within the
organization to update the user profile photo in the cloud environment.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": null
}
```

If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": null
}
```
## Block users from changing their user profile photos 

For tenants that store user profile photos in the cloud, an additional option is available to set which roles are able to update user profile photos
within the organization.

### Configure Global Administrator support for profile photo updates

The following example shows how to configure the Global Administrator role to update profile photos in your organization.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10"]
}
```

If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10"]
}
```
### Configure User Administrator support for profile photo updates

The following example shows how to configure the User Administrator role to update profile photos in your organization.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": [" fe930be7-5e62-47db-91af-98c3a49a38b1"]
}
```

If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{

    "source": "cloud",
    "allowedRoles": [" fe930be7-5e62-47db-91af-98c3a49a38b1"]
}
```
### Configure Global Administrator and User Administrator support for profile photo updates

The following example shows how to configure the Global Administrator and User Administrator roles to update profile photos in your organization.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10", "fe930be7-5e62-47db-91af-98c3a49a38b1"]
}
```

If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10","fe930be7-5e62-47db-91af-98c3a49a38b1"]

}
```
## Configure the on-premises user profile photo environment

The following example shows how to configure the on-premises user profile environment in your organization.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "onpremises",
    "allowedRoles": null
}
```
If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "source": "onPremises",
    "allowedRoles": null
}
```
