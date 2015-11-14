# Microsoft Graph permission scopes

The Microsoft Graph exposes OAuth 2.0 permission scopes that are used to control access that an app has to data. As a developer, you configure your app with the permission scopes appropriate to the access that it requires. Typically you do this through the Azure portal. During sign-in, users or administrators are given an opportunity to consent to allow your app access to their data with the permission scopes you configured. For this reason, you should choose permission scopes that provide the least level of privilege needed by your app. For more details on how to configure permissions for your app and on the consent process, see [Integrating Applications with Azure Active Directory](https://azure.microsoft.com/en-us/documentation/articles/active-directory-integrating-applications/).


<!---	In this section:
  
-	[Permission scope concepts](#msg_perm_concepts) 
-	[Permission scope details](#msg_perm_details)

<a name="msg_perm_concepts"> </a>  -->

##Permission scope concepts

###App-only vs. delegated scopes
Permission scopes can be either app-only or delegated. App-only scopes (also known as app roles) grant the app the full set of privileges offered by the scope. App-only scopes are typically used by apps that run as a service without a signed-in user being present. Delegated permission scopes are for apps that a user signs in to. These scopes delegate the privileges of the signed-in user to the app, allowing the app to act as the signed in user. The actual privileges granted to the app will be the least privileged combination (the intersection) of the privileges granted by the scope and those possessed by the signed-in user. For example, if the permission scope grants delegated privileges to write all directory objects, but the signed-in user has privileges only to update their own user profile, the app will only be able to write the signed-in user's profile but no other objects.

###Full and basic profiles for users and groups
The full profile (or profile) of a User or a Group includes all of the entity's declared properties. Because the profile may contain sensitive directory information or personally identifiable information (PII), several scopes constrain app access to a limited set of properties known as a basic profile. For users, the basic profile includes only the following properties: display name, first and last name, photo, and email address. For groups, the basic profile contains only the display name. 

<!---	<a name="msg_perm_details"> </a>  -->

##Permission scope details
You must configure your app to have the necessary permissions to access the Microsoft Graph API resources. The permissions are scoped to individual resources for the rights to read, to write or to do both. 

The following tables list the Microsoft Graph API permission scopes and explains the access granted by each. 
- The **Scope** column lists the scope name. Scope names take the form resource.operation.constraint; for example, Group.ReadWrite.All. If the constraint is "All", the scope grants the app the ability to perform the operation (ReadWrite) on all of the specified resources (Group) in the directory; otherwise, the scope only permits the operation on the profile of the signed-in user. Scopes may grant limited privileges for the specified operation, see the **Description** column for details.
- The **Permission** column shows how the scope is displayed on the Azure portal. 
- The **Description** column describes the full set of privileges granted by the scope. For delegated scopes, the actual access granted to the app will be the least privileged combination (intersection) of the access granted by the scope and the privileges of the signed-in user. 
- The scopes are grouped according to whether the permissions require administrator's consent.

###Permissions requiring administrator's consent

|   **Scope**                  |  **Permission on Azure Management Portal**                          |  **Description** |
|:-----------------------------|:-----------------------------------------|:-----------------|
| _User.Read.All_                |     `Read all user's full profiles`           | Allows the app to read a full set of profile properties of other users in your organization on behalf of the signed-in user.|
| _User.ReadWrite.All_           |     `Read and write all user's full profiles` | Allows the app to read and write the full set of profile properties, group membership, reports and managers of other users in your organization, on behalf of the signed-in user.  |
| _Directory.Read.All_           |     `Read directory data`                     | Allows the app to read data in your organization's directory, such as users, groups and apps.   |
| _Directory.ReadWrite.All_      |     `Read and write directory data`           | Allows the app to read and write data in your organization's directory, such as users, and groups, but prohibits user or group deletion.   |
| _Directory.AccessAsUser.All_   |     `Access directory as the signed-in user`  | Allows the app to access the same information in the directory as the signed-in user.  A native client app can have the user to consent to this permission. But a web app requires the administrator consent. |
| _Group.Read.All_ |    `Read all groups` | Allows the app to read all group properties and memberships on behalf of the signed-in user, and read group calendar and conversations on public groups and groups the signed in user is a member of.
| _Group.ReadWrite.All_ |    `Read and write all groups`| Allows the app to create groups on behalf of the signed-in user and read all group properties and memberships.  Additionally allows the app to update group properties and memberships for groups the signed-in user owns.  Also allows the app to read and write group calendar and conversations on public groups and groups the signed-in user is a member of. |


###Permissions not requiring administrator's consent

|   **Scope**    |  **Permission on Azure Management Portal**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _User.Read_       |    `Enable sign-in and read user profile` | Allows users to sign-in to the app, and allows the app to read the profile. It also allow the app to read basic company information of signed-in users. To read the user's manager, directr report, enable `User.ReadBasic.All`. To read a group membership, enable `Group.Read.All`.|
| _User.ReadWrite_ |    `Read and write access to user profile` | Allows the app to read the profile, group membership, reports and manager of signed-in users. It also allow the app to update profile information on behalf of signed-in users. |
| _User.ReadBasic.All_ |    `Read all user's basic profiles` | Allows the app to read a basic set of profile properties of other users, including the user's manager and direct reports, in your company or school on behalf of the signed-in user. This includes display name, first and last name, photo, and out of office message. | 
| _Mail.Read_ |    `Read user mail` | Allows the app to read email in user mailboxes. |
| _Mail.ReadWrite_ |    `Read and write access to user mail` | Allows the app to create, read, update, and delete email in user mailboxes. Does not include permission to send mail. |
| _Mail.Send_ |    `Send mail as a user` | Allows the app to send mail as users in the organization. |
| _Calendars.Read_ |    `Read user calendars`  | Allows the app to read events in user calendars . |
| _Calendars.ReadWrite_ |    `Have full access to user calendars`  | Allows the app to create, read, update, and delete events in user calendars. 
| _Files.Read_ |    `Read users' files` | Allows the application to read the current user's files
| _Files.ReadWrite_ |   `Edit or delete users' files`             | Allows the app to edit or delete the current user's files. |
| _Sites.Read.All_ |    `Read items in all site collections` | Allows the application to read documents and list  items in all site collections on behalf of the signed-in user |
| _Sites.ReadWrite.All_ |    `Edit or delete items in all site collections` | Allows the application to edit or delete documents and list items in all site collections on behalf of the signed-in user. |


###Permissions not requiring administrator's consent (preview)

|   **Scope**    |  **Permission on Azure Management Portal**   |  **Description** |
|:---------------|:------------------|:-----------------|
| _Tasks.Read.All_ |    `Read the user's tasks and projects`(preview) | Allows the app to read the user's tasks and projects on behalf of the user. |
| _Tasks.ReadWrite.All_ |    `Read and write the user's tasks and projects` (preview) | Allows the app to create, read, update and delete the user's tasks and projects on behalf of the user. |
| _Files.ReadWrite.Selected_ |    `Read and write files that the user selects`(preview) | Allows the app to read and write files that the user selects. The app has access for several hours after the user selects a file. |
| _Files.Read.Selected_ |    `Read files that the user selects` (preview) | Allows the app to read files that the user selects. The app has access for several hours after the user selects a file. |
| _People.Read_ |    `Read users' relevant people lists`(preview) | Allows the app to read a ranked list of relevant people of the signed-in user. The list includes local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype). |
| _People.ReadWrite_ |    `Read and write users' relevant people lists` (preview) | Allows the app to create, read and write to the ranked list of relevant people of the signed-in user. The list includes local contacts, contacts from social networking, your organization's directory, and people from recent communications (such as email and Skype). |
| _openid_ |    `Sign users in`(preview) | Allows users to sign in to the app with their work or school accounts and allows the app to see basic user profile information. |
| _offline_access_ |    `Read and write user's information` (preview) | Allows the app to see and update user's data, even when the user is not actively using the app. |
| _Notes.Create_ |    `Create pages in users' notebooks` (preview) | Allows the app to read the titles of notebooks and sections and create new pages, notebooks and sections on behalf of the signed-in user. |
| _Notes.ReadWrite.CreatedByApp_ |    `Limited notebook access` (preview) | Allows the app to read the titles of notebooks and sections; create new pages; read and write limited to pages created by the app on behalf of the signed-in user. |
| _Notes.Read_ |    `Read notebooks` (preview) | Allows the app to read the titles of notebooks and sections and read all pages on behalf of the signed-in user. It cannot read password protected sections.. |
| _Notes.ReadWrite_ |    `Read and write notebooks` (preview) | Allows the app to read the titles of notebooks and sections, read all pages, write all pages and create new pages on behalf of the signed-in user.  It cannot access password protected sections. |
| _Notes.Read.All_ |    `Read notebooks in your organization` (preview) | Allows the app to read the contents of all notebooks and sections that the signed-in user has access to.   It cannot read password protected sections. |
| _Notes.ReadWrite.All_ |    `Read and write notebooks in your organization` (preview) | Allows the app to read and write the contents of all notebooks and sections that the signed-in user has access to.  It cannot access password protected sections. |

<!-- -->

##Permission scope scenarios
The following are some app scenarios using the `User` and `Group` resources and their corresponding required scopes. The following table shows the permission scopes needed for an app to be able to perform specific operations. Note that in some cases the ability of the app to perform some operations will depend on whether the permission scope is app-only or delegated, and, in the case of delegated permission scopes, on the privileges of the signed-in user. 

###Access scenarios using the User resource and the required scopes

| **App tasks involving User**	 |  **Required scopes** | **Permissions on Azure Management Portal** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read other users' basic information (only display name and picture), for example to show in a people picking experience	 | _User.ReadBasic.All_  |  `Read all user's basic profiles` |
| App wants to read complete user profile for signed in user (see direct reports, and manager, etc)	 | _User.Read_ | `Enable sign-in and read user profile`|
| App wants to read complete user profile all users	 | _User.Read.All_ |  `Read all user's full profiles`   |
| App wants to read files, mail and calendar information for the signed in user	 | _User.Read_, _Files.Read_, _Mail.Read_, _Calendar.Read_ | `Enable sign-in and read user profile`, `Read users' files`,  `Read user mail`,  `Read user calendars` |
| App wants to read the signed-in user's (my) files and files that other users have shared with the signed-in user (me). | _User.Read_, _Files.Read_, _Sites.Read.All_ | `Enable sign-in and read user profile`, `Read users' files`,  `Read items in all site collections` |
| App wants to read and write complete user profile for signed in user	 | _User.ReadWrite_ | `Read and write access to user profile` |
| App wants to read and write complete user profile all users	 | _User.ReadWrite.All_ | `Read and write all user's full profiles` |
| App wants to read and write files, mail and calendar information for the signed in user	 | _User.ReadWrite_, _Files.ReadWrite_, _Mail.ReadWrite_, _Calendar.ReadWrite_  |  `Read and write access to user profile`,  `Read and write access to user profile`,  `Read and write access to user mail`, `Have full access to user calendars` |
   

###Access scenarios using the Group resource and the required scopes
    
| **App tasks involving Group**	 |  **Required scopes** |  **Permissions on Azure Management Portal** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read basic group info (only display name and picture), for example to show in a group picking experience	 | _Group.Read.All_  | `Read all groups`|
| App wants to read all content in all unified groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  |  _Group.Read.All_ | `Read items in all site collections`, `Read all groups`|
| App wants to read and write all content in all unified groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  | 	_Group.ReadWrite.All_, _Sites.ReadWrite.All_ |  `Read and write all groups`, `Edit or delete items in all site collections` |
| App wants to discover (find) a unified group. It allows the user to search for a particular group and choose one from the enumerated list to allow the user to join the group.	 | _Group.ReadWrite.All_ | `Read and write all groups`|
| App wants to create a group through AAD Graph | 	_Group.ReadWrite.All_ | `Read and write all groups`|
 

<!---	##Additional Resources##


- [Authenticate Microsoft Graph endpoints using the v2.0 app model preview](authenticate-MSGraph-using-v2.md )
- [Hands on lab: Deep dive into the Office 365 unified API](http://dev.office.com/hands-on-labs/4585) -->

