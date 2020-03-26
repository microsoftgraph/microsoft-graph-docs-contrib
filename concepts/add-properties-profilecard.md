---
title: "How to add additional properties to the profile card"
description: "TO DO POLLY*****Users are the representation of an Azure Active Directory (Azure AD) work or school user account or a Microsoft account in Microsoft Graph. The **user** resource in Microsoft Graph is a hub from which you can access the relationships and resources that are relevant to your users."
author: "PollyNincevic"
localization_priority: Priority
ms.prod: "users"
ms.custom: scenarios:ASK****getting-started
---

# How to add additional properties to the profile card

On the [profile card](https://support.office.com/article/profile-cards-in-office-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501), you can find information about users that is stored and maintained by your organization, for example Job title or Office location.  

You can add additional properties from your Active Directory to be shown on profile cards by:

- Making additional attributes visible, or

- Adding custom attributes

## Make additional attributes visible

You can make the following attributes from AD or AAD visible on users' profile cards:

UserPrincipalName
Fax
StreetAddress
PostalCode
StateOrProvince
Alias

You can add any of the above listed attributes to the profile card by configuring your tenant settings in Microsoft Graph1. Here's how to do that:

Go to https://developer.microsoft.com/en-us/graph/graph-explorer 

Sign in with your Admin username and password 

Make sure the Preview toggle is set to Off 

In the Query URL, select PATCH and enter https://microsoft.com/beta/organization/[TenantID]/settings 

In Request Body enter: 

{ 

"experiencePersonalization": { 

                "visibilities": { 

                    "[Attribute name, e.g. Alias]": "Visible" 

                } 

        } 

}  

Click Run Query 

Note: When you make additional attributes visible, you must use the English property names. You don't have to add localized values. The additional properties will automatically be shown in the language settings that the user has specified for Office 365. 

Important: It takes up to 24 hours for the changes to show on profile cards. 

 
### Manage your organization

Create new users in your organization or update the resources and relationships for existing users. You can use Microsoft Graph to perform the following user management tasks: 

- Create or delete users in your Azure AD organization.
- List a user's group memberships and determine whether a user is a member of a group.
- List the users who report to a user and assign managers to a user.
- Upload or retrieve a photo for the user.

### Work with calendars and tasks

You can view, query, and update user calendar and calendar groups associated with a user, including:

- List and create events on a users calendar.
- View tasks assigned to a user.
- Find free meeting times for a set of users.
- Get a list of reminders set on a user's calendar.

### Administer mail and handle contacts

You can configure user mail settings and contact lists and send mail on a user's behalf, including:

- List mail messages and send new mail.
- Create and list user contacts and organize contacts in folders.
- Retrieve and update mailbox folders and settings.

### Enrich your app with user insights

Maximize relevance in your application by promoting recently used or trending documents and contacts associated with a user. You can use Microsoft Graph to:

- Return documents recently viewed and modified by a user.
- Return documents and sites trending around a user's activity.
- List documents shared with a user through email or OneDrive for Business.

## API reference
Looking for the API reference for this service?

- [Users API in Microsoft Graph v1.0](/graph/api/resources/users?view=graph-rest-1.0)
- [Users API in Microsoft Graph beta](/graph/api/resources/users?view=graph-rest-beta)

## Next steps

- Learn more about how to [work with users](/graph/api/resources/users?view=graph-rest-1.0).
- Explore your own data from the **user** resource in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Authenticate with Microsoft Graph [on behalf of a user](auth-v2-user.md) or [as a daemon or service by consent of an administrator](auth-v2-service.md).
- Set access control and policies for users with the [Azure AD API](/graph/api/resources/azure-ad-overview?view=graph-rest-1.0).
- Review the [permissions](permissions-reference.md) your app will need to access user data. 
<!-- This isn't really a next step; let's remove to keep the list of links concise.>
- Stay up to date with Microsoft Graph [changelog](changelog.md).
-->
