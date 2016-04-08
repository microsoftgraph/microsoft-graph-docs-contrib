# Authenticate Microsoft Graph endpoints using the v2 authentication  endpoint


<!--
### Preview documentation
There are features and functionality of the converged authentication model that are not yet supported in the public preview period. You should be aware of them if you are building applications during the public preview. For more information, see [Limitations and restrictions of the converged authentication model preview](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-limitations/).
-->

## Signing in Microsoft account and Azure AD users with a single authentication model

By using the v2 authentication endpoint, you can create apps that accept both work and school (Azure AD) as well as personal (Microsoft account) identities.

In the past, an app developer who wanted to support both Microsoft accounts and Azure Active Directory was required to integrate with two completely separate systems. Now you can build apps using the v2 authentication endpoint, which allows you to sign users in with both types of accounts. One simple process allows you to immediately reach an audience that spans millions of users with both personal and work/school accounts.   

Now, your apps can use the v2 authentication endpoint to access Microsoft Graph endpoints that are available for both work or school or personal accounts, such as:

| Data              | Endpoint                                       |
|:------------------|:-----------------------------------------------|
| User profile      | `https://graph.microsoft.com/v1.0/me`          |
| Outlook mail      | `https://graph.microsoft.com/v1.0/me/messages` |
| Outlook contacts  | `https://graph.microsoft.com/v1.0/me/contacts` |
| Outlook calendars | `https://graph.microsoft.com/v1.0/me/events`   |
| OneDrive          | `https://graph.microsoft.com/v1.0/me/drive`    |

As well as endpoints available on the Microsoft Graph for work or school accounts only, such as groups and tasks.


## Microsoft Graph API authentication scopes

The v2 authentication endpoint supports all permission scopes listed for use with Azure AD authentication in the [Microsoft Graph permission scopes](/permission_scopes.md) topic. However, the v2 authentication endpoint does not currently support app-only scopes.

**Note**: Currently, you are required to pass the resource url of 'https://graph.microsoft.com' as prefix for the scope string. For example, to use the `Files.Read` scope you would specify the scope as `https://graph.microsoft.com/Files.Read`.

For more information about using scopes with the v2 authentication endpoint, and how it differs from using resources in Azure AD, see [Scopes, not resources](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-compare/#scopes-not-resources).

<!--
The table below lists the authentication scopes to use with the converged authentication model preview. For more information about using scopes with the converged authentication model, and how it differs from using resources in Azure AD, see [Scopes, not resources](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-compare/#scopes-not-resources).


| **Scope**             | **Permission**                        | **Description**                                                                                                                                         |
|:----------------------|:--------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|
| `User.Read`           | Enable sign-in and read user profile  | Allows users to sign-in to the app, and allows the app to read the profile. It also allow the app to read basic company information of signed-in users. |
| `User.ReadWrite`      | Read and write access to user profile | Allows the app to read the profile of signed-in users, and to update profile information on behalf of signed-in users.                                  |
| `Mail.Read`           | Read user mail                        | Allows this app to read messages in user mailboxes.                                                                                                     |
| `Mail.ReadWrite`      | Read and write access to user mail    | Allows the app to read, update, create, and delete messages in user mailboxes.                                                                          |
| `Mail.Send`           | Send mail as a user                   | Allows the app to send messages as users in the organization.                                                                                           |
| `Contacts.Read`       | Read user contacts                    | Allows the app to read user contacts.                                                                                                                   |
| `Contacts.ReadWrite`  | Have full access to user contacts     | Allows the app to read, update, create and delete user contacts.                                                                                        |
| `Calendars.Read`      | Read user calendars                   | Allows the app to read events in user calendars.                                                                                                        |
| `Calendars.ReadWrite` | Have full access to user calendars    | Allows the app to read, update, create, and delete events in user calendars.                                                                            |
| `Files.Read`          | Read users' files                     | Allows the application to read the current user's files.                                                                                                |
| `Files.ReadWrite`     | Edit or delete users' files           | Allows the app to edit or delete the current user's files.                                                                                              |
| `openid`              | Sign users in                         | Allows users to sign in to the app and allows the app to see basic user profile information.                                                            |
| `offline_access`      | Read and write user's information     | Allows the app to see and update user's data, even when the user is not actively using the app.                                                         |

**Note**: currently it is required to pass the resource url of 'https://graph.microsoft.com' as prefix for the scope string. For example, to use the `Files.Read` scope you would specify the scope as `https://graph.microsoft.com/Files.Read`.
-->


## Next steps

[Register an app to use the v2 authentication endpoint](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-app-registration/)

## Learn more

[What's new about the v2 authentication model](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-compare)

[Limitations and restrictions in the v2 authentication model](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-limitations/)

More [v2 authentication endpoint documentation](https://azure.microsoft.com/en-us/documentation/articles/?service=active-directory&term=app+model+v2.0) on [azure.microsoft.com](https://azure.microsoft.com)
