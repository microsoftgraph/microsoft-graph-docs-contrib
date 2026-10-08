---
title: "Manage user profile photo settings in Microsoft 365 by using Microsoft Graph"
description: "Learn how to configure where and how user profile photo updates are managed in your organization."
author: "shivanioslo"
ms.author: "shivansingh"
ms.topic: concept-article
ms.localizationpriority: medium
ms.subservice: people
ms.date: 11/07/2024
ms.custom: sfi-ga-nochange
---

# Manage user profile photo settings in Microsoft 365 by using Microsoft Graph

Administrators can use the Microsoft Graph API to get and configure photo update settings in an organization. They can also control the environment where user profile photos can be updated within the organization and define which roles are required to update profile user photos.

## Configure the user profile photo environment 

For hybrid tenants, user accounts can be synced from on-premises Microsoft Entra ID to the cloud via [directory sync](/azure/active-directory/architecture/sync-directory). To determine whether you have a hybrid environment, see [Determine your identity model](/microsoft-365/enterprise/deploy-identity-solution-identity-model?view=o365-worldwide). For hybrid tenants, administrators can configure whether user profile photo updates made on-premises sync to the cloud, or whether user profile photo updates are made from the cloud only.

Configuration of user profile photo updates doesn't affect other user account properties. Also, this configuration doesn't affect existing user profile photos in the cloud or on-premises.

### Cloud environment

In hybrid tenant and cloud-only environments, user profile photo settings are updated in the cloud and the settings aren't synced to on-premises. In cloud environments, user profile photo settings can be updated through Microsoft Entra ID or Microsoft Graph; for more information, see [Change user profile photos](/microsoft-365/admin/add-users/change-user-profile-photos). Tenants in a cloud environment have the option to disable user profile photo updates.

Configuring this option doesn't remove on-premises photos stored in Microsoft Entra ID or sync cloud photos to on-premises. If you select this option, tenant admins should remove the
Microsoft Entra ID user profile photos by using Exchange PowerShell cmdlets. For more information, see [Remove-UserPhoto](/powershell/module/exchange/remove-userphoto).  

### On-premises environment

In hybrid tenants, user profile photo settings updated on-premises continue to sync user profile photos from on-premises to the cloud, and user profile photo updates are visible across Microsoft 365 products. Updates through cloud services are disabled for both admins and users. Tenants in an on-premises environment don't have the option to disable user profile photo updates.

> [!Important]
> When you update user profile photo settings, it can take up to 24 hours for the changes to propagate to Microsoft 365. For example, if you block cloud user profile photo updates, it can take up to 24 hours for users to be blocked from making updates.

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
    "allowedRoles": []
}
```

## Configure the cloud user profile photo environment

Use the update operation to configure the cloud user profile environment in your organization. The following example shows how to enable all users within the organization to update the user profile photo in the cloud environment.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": []
}
```

If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": []
}
```
## Block users from changing their user profile photos 

Tenants with user profile photo settings updated in the cloud have the option to set which roles are able to update user profile photos
within the organization.

### Configure User Administrator support for profile photo updates

The following example shows how to configure the User Administrator role to change profile photo update settings in your organization.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": ["fe930be7-5e62-47db-91af-98c3a49a38b1"]
}
```

If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{

    "source": "cloud",
    "allowedRoles": ["fe930be7-5e62-47db-91af-98c3a49a38b1"]
}
```
### Configure adminstrator support for profile photo updates

The following example shows how to configure the Global Administrator, User Administrator, and People Administrator roles to change profile photo update settings in your organization.

```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings
Content-Type: application/json

{
    "source": "cloud",
    "allowedRoles": ["62e90394-69f5-4237-9190-012177145e10", "fe930be7-5e62-47db-91af-98c3a49a38b1", "024906de-61e5-49c8-8572-40335f1e0e10"]
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
    "source": "onPremises",
    "allowedRoles": []
}
```
If successful, the response returns a `200 OK` response code and a **photoUpdateSettings** object in the response body.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "source": "onPremises",
    "allowedRoles": []
}
```
