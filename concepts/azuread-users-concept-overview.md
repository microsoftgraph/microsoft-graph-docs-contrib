# Overview of users in Microsoft Graph

Users are the representation of an Azure Active Directory work or school user account or a Microsoft Account in Microsoft Graph. The `users` resource in Microsoft Graph is a hub from which you can access the relationships and resources relevant to your users.

![Diagram showing a user connected to calendar, email, contacts, meetings, tasks, sites, and documents](images/users.png)

## Develop user-centric applications

Access the relationships, documents, contacts, and preferences contextually relevant to the signed-in user with `users` resource. Operations in the user resource provide an idiomatic way of accessing and manipulating user resources without having to perform additional calls look up specific authentication information and directly issue queries against other Graph resources.

To get to access a user's information and data, you'll need to [get access on their behalf](https://developer.microsoft.com/graph/docs/concepts/auth_v2_user) before using the `users` resource. Authenticating your with application with [admin consent](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference) enables you to work with and update  a wider range of entities associated with a user.

### Manage your organization

Create new users in your organization or update the resources and relationships for existing users with the `users` resource. 

- Create or delete users in your Azure AD organization.
- List a user's group memberships and check if a user is a member of a group.
- List the users who report to a user and assign managers to a user.
- Upload or retrieve a photo for the user.

### Work with calendars and tasks

View, query, and update user calendar and calendar groups associated with a user.

- List and create events on a users calendar.
- View assigned tasks to a user.
- Find free meeting times for a set of users.
- Get a list of reminders set on a user's calendar.

### Administer mail and handle contacts

Configure user mail settings and contact lists and send mail on a user's behalf.

- List mail messages and send new mail.
- Create and list user contacts and organize contacts in folders.
- Retrieve and update mailbox folders and settings.

### Enrich your app with user insights

Maximize relevance in your application by promoting recently used or trending documents and contacts associated with a user.

- Return recently viewed and modified documents by a user.
- Return documents and sites trending around a user's activity.
- List documents shared with a user through email or OneDrive for Business.

## Next steps

- View the `users` [Microsoft Graph reference documentation](https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/users).
- Explore your own data from the `users` resource in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Authenticate with Microsoft Graph [on behalf of a user](https://developer.microsoft.com/graph/docs/concepts/auth_v2_user) or [as a daemon or service by consent of an administator](https://developer.microsoft.com/graph/docs/concepts/auth_v2_service).
- Set access control and policies for users with the [Azure AD resource](https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/azure_ad_overview)
- Review the [permissions](https://developer.microsoft.com/graph/docs/concepts/permissions_reference) your app will need to access user data. 
- Stay up to date with the Microsoft Graph [changelog](https://developer.microsoft.com/graph/docs/concepts/changelog)
