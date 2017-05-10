# Known issues with Microsoft Graph

This article describes known issues with the Microsoft Graph. For information about the latest updates, see the [Microsoft Graph Changelog](changelog.md).

## Users

### No instant access after creation

Users can be created immediately through a POST on the user entity. An Office 365 license must first be assigned to a user, in order to get access to Office 365 services. Even then, due to the distributed nature of the service, it might take 15 minutes before files, messages and events entities are available for use for this user, through the Microsoft Graph API. During this time, apps will receive a 404 HTTP error response.

### Photo restrictions

Reading and updating a user's profile photo is only possible if the user has a mailbox. Additionally, any photos that *may* have been previously stored using the **thumbnailPhoto** property (using the Office 365 unified API preview, or the Azure AD Graph, or through AD Connect synchronization) will no longer be accessible through the Microsoft Graph user photo property.
Failure to read or update a photo, in this case, would result in the following error:

```javascript
	{
	  "error": {
	    "code": "ErrorNonExistentMailbox",
	    "message": "The SMTP address has no mailbox associated with it."
	  }
	}
```

### Adding and accessing ICS-based calendars in user's mailbox

Currently, there is partial support for a calendar based on an Internet Calendar Subscription (ICS):

* You can add an ICS-based calendar to a user mailbox through the user interface, but not through the Microsoft Graph API.
* [Listing the user's calendars](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/user_list_calendars) allows you to get the **name**, **color** and **id** properties of each [calendar](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/calendar) in the user's default calendar group, or a specified calendar group, including any ICS-based calendars. You cannot store or access the ICS URL in the calendar resource.
* You can also [list the events](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/calendar_list_events) of an ICS-based calendar.

### Using delta query

For known issues using delta query, see the [delta query section](#delta-query) in this article.

## Groups and (beta) Microsoft Teams

### Policy

Using Microsoft Graph to create and name an Office 365 group bypasses any Office 365 group policies that are configured through Outlook Web App. 

### Permission scopes for groups and (beta) Microsoft Teams

Microsoft Graph exposes two permission scopes (*Group.Read.All* and *Group.ReadWrite.All*) for access to the APIs for groups and Microsoft Teams.
These permission scopes must be consented to by an administrator (which is a change from preview).  In the future we plan to add new scopes for groups and teams that can be consented by users.

Also, only the API for core group administration and management supports access using delegated or app-only permissions. All other features of the group API support only delegated permissions.

Examples of group features that support delegated and app-only permissions:

* Creating and deleting groups
* Getting and updating group properties pertaining to group administration or management
* Group [directory settings](../api-reference/v1.0/resources/directoryobject.md), type and synchronization
* Group owners and membership


Examples of group features that support only delegated permissions:

* Group conversations, events, photo
* External senders, accepted or rejected senders, group subscription
* User favorites and unseen count

### Teams in Microsoft Teams (beta)

Microsoft Teams are built upon Office 365 groups.  All group APIs can also be used with teams, with the exception that 'Create group' does not currently allow you to create a team.  Future API releases will support this.

### Microsoft Teams channels (beta)

Currently, you can read and create channels, but you cannot update or delete them.  Future API releases will support this.

### Microsoft Teams chat threads and chat messages (beta)

Currently, you can create chat threads in channels, but you cannot read existing chat threads or add replies to them.  You also cannot read or write direct chats between users that are outside the scope of a team or channel.  Future API releases will add additional capabilities in this area.


### Adding and getting attachments of group posts

[Adding](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/post_post_attachments) attachments to group posts, [listing](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/post_list_attachments) and 
getting attachments of group posts currently return the error message "The OData request is not supported." A fix has been rolled out for both the `/v1.0` and `/beta` versions,
and is expected to be widely available by the end of January 2016.

### Setting the allowExternalSenders property

There is currently an issue that prevents setting the **allowExternalSenders** property of a group in a POST or PATCH operation, in both `/v1.0` and `/beta`.

### Using delta query

For known issues using delta query, see the [delta query section](#delta-query) in this article.

## Contacts

### Organization contacts available in only beta

Only personal contacts are currently supported. Organizational contacts are not currently supported in `/v1.0`, but can be found in `/beta`.

### Default contacts folder

In the `/v1.0` version, `GET /me/contactFolders` does not include the user's default contacts folder. 

A fix will be made available. Meanwhile, you can use the following [list contacts](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/user_list_contacts) query and the **parentFolderId** property
as a workaround to get the folder ID of the default contacts folder:

```http
GET https://graph.microsoft.com/v1.0/me/contacts?$top=1&$select=parentFolderId
```

In the above query:

1. `/me/contacts?$top=1` gets the properties of a [contact](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/contact) in the default contacts folder.
2. Appending `&$select=parentFolderId` returns only the contact's **parentFolderId** property, which is the ID of the default contacts folder.


### Accessing contacts via a contact folder in beta

In the `/beta` version, there is currently an issue that prevents accessing a [contact](../api-reference/beta/resources/contact.md) 
by specifying its parent folder in the REST request URL, as shown in the 2 scenarios below.

* Accessing a contact from a top level [contactFolder](../api-reference/beta/resources/contactfolder.md) of the user's.

```http
GET /me/contactfolders/{id}/contacts/{id}
GET /users/{id | userPrincipalName}/contactfolders/{id}/contacts/{id}
```

* Accessing a contact contained in a child folder of a **contactFolder**.  The example below shows one level of nesting, but a contact can be located in a child of a child and so on.

```http
GET /me/contactFolder/{id}/childFolders/{id}/.../contacts/{id}
GET /users/{id | userPrincipalName}/contactFolders/{id}/childFolders/{id}/contacts/{id}
```

As an alternative, you can simply [get](../api-reference/beta/api/contact_get.md) the contact by specifying its ID as shown below, 
since GET /contacts in the `/beta` version applies to all the contacts in the user's mailbox:

```http
GET /me/contacts/{id}
GET /users/{id | userPrincipalName}/contacts/{id}
```

## Messages

### The comment parameter for creating a draft

The **comment** parameter for creating a reply or forward draft ([createReply](../api-reference/v1.0/api/message_createreply.md), 
[createReplyAll](../api-reference/v1.0/api/message_createreplyall.md), [createForward](../api-reference/v1.0/api/message_createforward.md)) 
does not become part of the body of the resultant message draft.  

## Drives, files and content streaming

* First time access to a user's personal drive through the Microsoft Graph before the user accesses their personal site through a browser leads to a 401 response.

## Query parameter limitations

* **$expand** limitations:
	* No support for `nextLink`
 	* No support for more than 1 level of expand
 	* No support with extra parameters (**$filter**, **$select**)
* Multiple namespaces are not supported
* GETs on `$ref` and casting is not supported on users, groups, devices, service principals and applications.
* `@odata.bind` is not supported.  This means that developers won’t be able to properly set the `Accepted` or `RejectedSenders` on a group.
* `@odata.id` is not present on non-containment navigations (like messages) when using minimal metadata
* Cross-workload filtering/search is not available. 
* Full-text search (using **$search**) is only available for some entities, like messages.

## Delta query

Tracking changes to relationships on users and groups is only supported within the specific resource class for which changes are being tracked. For example, if a client is tracking changes on *groups* and has selected the *members* relationship, the client will only receive membership updates in the delta query response if those members are also *groups*. In other words, tracking group membership for users is not yet supported. The Microsoft Graph team understands that this is a high priority scenario and an update is targeted to be delivered soon.

## Extensions

### Change tracking is not supported

Change tracking (delta query) is not supported for open or schema extension properties.

### Creating a resource and open extension at the same time

You cannot specify an open extension at the same time you create an instance of **administrativeUnit**, **device**, **group**, **organization** or **user**. You must first create the instance and then specify the open extension data in a subsequent ``POST`` request on that instance.

### Limit of 100 schema extension property values allowed per resource instance

Directory resources, such as **device**, **group** and **user**, currently limit the total number of schema extension property values that can be set on a resource instance, to 100.

## JSON Batching

### No nested batch

JSON batch requests must not contain any nested batch requests.

### All individual requests must be synchronous

All requests contained in a batch request must be executed synchronously. If present, the `respond-async` preference will be ignored.

### No transactions

Microsoft Graph does not currently support transactional processing of individual requests. The `atomicityGroup` property on individual requests will be ignored.

### URIs must be relative

All URIs must be relative. Microsoft Graph will make these URLs absolute by using the version endpoint included in the batch URL.

### Limit on batch size

JSON batch requests are currently limited to 5 individual requests. We will raise this limit as JSON batching matures.

### Simplified dependencies

Individual requests can depend on other individual requests. Currently, requests can only depend on a single other request, and must follow one of these three patterns:

1. Parallel; no individual request states a dependency in the `dependsOn` property.
2. Serial; all individual requests depend on the previous individual request.
3. Same; all individual requests that state a dependency in the `dependsOn` property, state the same dependency.

We will remove these limitations as JSON batching matures.

## Cloud Solution Provider apps must use Azure AD endpoint

Cloud solution provider (CSP) apps must acquire tokens from the Azure AD (v1) endpoints to successfully call Microsoft Graph in their partner-managed customers. Currently, acquiring a token through the newer Azure AD v2.0 endpoint is not supported.

## Functionality available only in Office 365 REST or Azure AD Graph APIs

Some functionality is not yet available in Microsoft Graph. If you don't see the functionality you're looking for, you can use the endpoint-specific [Office 365 REST APIs](https://msdn.microsoft.com/en-us/office/office365/api/api-catalog). For Azure Active Directory, please refer to the [Microsoft Graph or Azure AD Graph](https://dev.office.com/blogs/microsoft-graph-or-azure-ad-graph) blog post on the features that are only available through Azure AD Graph API.

### Feedback

> Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365). Tag your questions with [MicrosoftGraph] and [office365].