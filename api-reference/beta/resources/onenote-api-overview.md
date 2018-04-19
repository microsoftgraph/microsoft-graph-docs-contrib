# Use the OneNote REST API

{Create one copy of this API overview for each of v1.0 and beta. The main content is the use cases for your API set - see mail_api_overview.md as an example.}



## Root URL
The OneNote service root URL uses the following format for all calls to the OneNote API.
```
https://graph.microsoft.com/{version}/{location}/onenote/ 
```
The location can be user notebooks on Office 365 or consumer OneDrive, group notebooks, or SharePoint site-hosted team notebooks on Office 365. 

**User notebooks** To access personal notebooks on consumer OneDrive or OneDrive for Business, use one of the following URLs:

```
https://graph.microsoft.com/{version}/me/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{userPrincipalName}/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```

- `me` is for OneNote content that the current user can access (owned and shared).
- `users/{id}` is for OneNote content that the specified user (in the URL) has shared with the current user. Use the [Azure AD Graph API](https://msdn.microsoft.com/library/azure/ad/graph/api/api-catalog)
> **Note:**
> You can get user ids by making a GET request on `https://graph.microsoft.com/v1.0/users`.

**Group notebooks** To access notebooks that are owned by a group, use the following service root URL:

```
https://graph.microsoft.com/{version}/groups/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```
**SharePoint site notebooks** To access notebooks that are owned by a SharePoint team site, use the following service root URL:

```
https://graph.microsoft.com/{version}/sites/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```


The `version` segment in the URL represents the version of Microsoft Graph that you want to use.
- `v1.0` is for stable production code.
- `beta` is to try out a feature that's in development. Features and functionality in beta may change, so you shouldn't use it in your production code.
