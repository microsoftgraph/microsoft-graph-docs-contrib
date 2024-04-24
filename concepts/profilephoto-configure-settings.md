---
title: "Manage user profile photo settings in Microsoft 365 using Microsoft Graph"
description: "How admins can set where photos can be changed by the user"
ms.author: "shivansingh"
ms.date: 04/24/2024
---

#  Manage user profile photo settings in Microsoft 365 using Microsoft Graph

Using the Microsoft Graph API, Global Administrators can get and
configure photo update settings in an organization. This includes
controlling the environment where user profile photos can be updated
within the organization and which roles are required to update profile
user photos within the organization.

This setting is only available to tenants that have a hybrid identity. Hybrid identity uses accounts that originate in an on-premises AD DS and have a copy in the Microsoft Entra tenant of a Microsoft 365 subscription. To determine whether this applies to you see [here](https://learn.microsoft.com/en-us/microsoft-365/enterprise/deploy-identity-solution-identity-model?view=o365-worldwide). For such hybrid tenants, Global Administrators can configure whether user profile photo updates from on-premises should take effect
within the cloud or whether user profile photo updates within the
organization are to be made from the cloud only. 

## Steps for admins 

1. Configure your chosen User Profile Photos environment 
    1. Cloud  
    2. On-premises 

2. Migrate existing User Profile Photo actions to the chosen environment 
    1. On-premises to cloud 
    2. Cloud to on-premises 

3. Clean-up User Profile Photos in the non-supported environment 
    1. On-premises 
    2. Cloud 

## Configure the User Profile Photo environment 

For tenants that have a hybrid identity, user accounts can be synced
from on-premises Active Directory to the cloud via [Directory
Sync](https://learn.microsoft.com/en-us/azure/active-directory/architecture/sync-directory). 
For such hybrid tenants, Global Administrators can configure whether
such user profile photo updates from on-premises should take effect
within the cloud or whether user profile photo updates within the
organization are to be made from the cloud only.

Configuration of user profile photo updates does not impact other user
account properties.  Also, configuring of the environment where new
updates can be performed does not affect existing user profile photos
(neither cloud nor on-premises user profile photos). 

### Cloud 

Hybrid tenants that select cloud as their user profile photo master will
not have on-premises user profile photos synced to the cloud. User
profile photos can be updated through Entra ID or Microsoft Graph, as
described in
[this](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/change-user-profile-photos)
document. For tenants that select this configuration, an additional
option to disable user profile photo updates is available. 

*Note: Configuring this option does not remove the on-premises photos
stored in Active Directory or sync the cloud photos to on-premises. Once
this option has been selected, tenant admins are advised to remove the
Active Directory user profile photos using Exchange PowerShell cmdlets,
as described in
[this](https://learn.microsoft.com/en-us/powershell/module/exchange/remove-userphoto)
document. * 

 

### On-premises  

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

    \"source\": \"cloud\",

    \"allowedRoles\": null

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

    \"source\": \"cloud\",

    \"allowedRoles\": null

}
```

If successful, the response returns a 200 OK response code and
a photoUpdateSettings object in the response body.
```http
HTTP/1.1 200 OK

Content-Type: application/json

{

    \"source\": \"cloud\",

    \"allowedRoles\": null

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

    \"source\": \"cloud\",

    \"allowedRoles\": \[\"62e90394-69f5-4237-9190-012177145e10\"\]

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    \"source\": \"cloud\",

    \"allowedRoles\": \[\"62e90394-69f5-4237-9190-012177145e10\"\]

}
```
### User Administrator

Use the update operation to configure User Administrator only profile
photo update support in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    \"source\": \"cloud\",

    \"allowedRoles\": \[\" fe930be7-5e62-47db-91af-98c3a49a38b1\"\]

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    \"source\": \"cloud\",

    \"allowedRoles\": \[\" fe930be7-5e62-47db-91af-98c3a49a38b1\"\]

}
```
### Global Administrator and User Administrator

Use the update operation to configure Global Administrator and User
Administrator profile photo support in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    \"source\": \"cloud\",

    \"allowedRoles\": \[\"62e90394-69f5-4237-9190-012177145e10\",
\"fe930be7-5e62-47db-91af-98c3a49a38b1\"\]

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    \"source\": \"cloud\",

    \"allowedRoles\": \[\"62e90394-69f5-4237-9190-012177145e10\",
\"fe930be7-5e62-47db-91af-98c3a49a38b1\"\]

}
```
## Configure On-Premises User Profile Photo Environment

Use the update operation to configure the on-premises user profile
environment in your organization.
```http
PATCH https://graph.microsoft.com/beta/admin/people/photoupdatesettings

Content-Type: application/json

{

    \"source\": \"onpremises\",

    \"allowedRoles\": null

}
```
If successful, the response returns a `200 OK` response code and
a photoUpdateSettings object in the response body.
```http
{

    \"source\": \"onPremises\",

    \"allowedRoles\": null

}
```
## Clean up User Profile Photos in the non-supported environment

After updating the User Profile Photo Environment, it is advised that
user profile photos in the non-supported environment are removed.

### On-premises

The on-premises photo can be removed from Active Directory using
Exchange PowerShell, as described in
[this](https://learn.microsoft.com/en-us/powershell/module/exchange/remove-userphoto)
document.

### Cloud

The cloud user profile photo can be removed using the Microsoft Graph,
as described in
[this](https://learn.microsoft.com/en-us/graph/api/profilephoto-delete?view=graph-rest-1.0&tabs=http)
document.

## How the introduction of admin controls impacts existing photos stored in the cloud and on-premises 

There is no impact on existing photos stored in the cloud and
on-premises.  
