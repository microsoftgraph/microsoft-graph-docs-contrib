---
author: JeremyKelley
ms.date: 09/10/2017
title: Permission
ms.localizationpriority: high
description: "The Permission resource provides information about a sharing permission granted for a DriveItem resource."
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# Permission resource type

Namespace: microsoft.graph

The **Permission** resource provides information about a sharing permission granted for a [DriveItem](driveitem.md) resource.

Sharing permissions have a number of different forms.
The **permission** resource represents these different forms through facets on the resource.

OneDrive for Business and SharePoint document libraries do not return the **inheritedFrom** property.
**grantedTo** and **grantedToIdentities** will be deprecated going forward and the response will be migrated to **grantedToV2** and **grantedToIdentitiesV2** respectively under appropriate property names.

## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "link",
    "grantedTo",
    "grantedToIdentities",
    "grantedToV2",
    "grantedToIdentitiesV2",
    "invitation",
    "inheritedFrom",
    "shareId",
    "expirationDateTime",
    "hasPassword"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.permission"
}-->
```json

{
  "id": "string (identifier)",
  "grantedTo": {"@odata.type": "microsoft.graph.identitySet"},
  "grantedToIdentities": [{"@odata.type": "microsoft.graph.identitySet"}],
  "grantedToV2": {"@odata.type": "microsoft.graph.sharePointIdentitySet"},
  "grantedToIdentitiesV2": [{"@odata.type": "microsoft.graph.sharePointIdentitySet"}],
  "inheritedFrom": {"@odata.type": "microsoft.graph.itemReference"},
  "invitation": {"@odata.type": "microsoft.graph.sharingInvitation"},
  "link": {"@odata.type": "microsoft.graph.sharingLink"},
  "roles": ["string"],
  "shareId": "string",
  "expirationDateTime": "string (timestamp)",
  "hasPassword": "boolean"  
}
```

## Properties

| Property                         | Type                                      | Description |
|:---------------------------------|:------------------------------------------|:-----------------
| expirationDateTime               | DateTimeOffset                            | A format of yyyy-MM-ddTHH:mm:ssZ of DateTimeOffset indicates the expiration time of the permission. DateTime.MinValue indicates there is no expiration set for this permission. Optional. |
| id                               | String                                    | The unique identifier of the permission among all permissions on the item. Read-only. |
| hasPassword                      | Boolean                                   | Indicates whether the password is set for this permission. This property only appears in the response. Optional. Read-only. For OneDrive Personal only.. |
| grantedTo (deprecated)           | [IdentitySet](identityset.md)             | For user type permissions, the details of the users and applications for this permission. Read-only. |
| grantedToIdentities (deprecated) | Collection([IdentitySet](identityset.md)) | For type permissions, the details of the users to whom permission was granted. Read-only. |
| grantedToIdentitiesV2            | Collection([SharePointIdentitySet][]) | For link type permissions, the details of the users to whom permission was granted. Read-only. |
| grantedToV2                      | [SharePointIdentitySet][]                 | For user type permissions, the details of the users and applications for this permission. Read-only. |
| inheritedFrom                    | [ItemReference](itemreference.md)         | Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Read-only. |
| invitation                       | [SharingInvitation][]                     | Details of any associated sharing invitation for this permission. Read-only. |
| link                             | [SharingLink][]                           | Provides the link details of the current permission, if it is a link type permissions. Read-only. |
| roles                            | Collection of String                      | The type of permission, for example, `read`. See below for the full list of roles. Read-only. |
| shareId                          | String                                    | A unique token that can be used to access this shared item via the [**shares** API](../api/shares-get.md). Read-only. |


The permission resource uses _facets_ to provide information about the kind of permission represented by the resource.

Permissions with a [**link**][SharingLink] facet represent sharing links created on the item. 
Sharing links contain a unique token that provides access to the item for anyone with the link.

Permissions with an [**invitation**][SharingInvitation] facet represent permissions added by inviting specific users or groups to have access to the file.

[SharingInvitation]: sharinginvitation.md
[SharingLink]: sharinglink.md
[SharePointIdentitySet]: sharePointIdentitySet.md

### Roles property values

| Value           | Description                                                                        |
|:----------------|:-------------------------------------------------------------------------------|
| read            | Provides the ability to read the metadata and contents of the item.            |
| write           | Provides the ability to read and modify the metadata and contents of the item. |
| owner           | For SharePoint and OneDrive for Business this represents the owner role.       |

## Sharing links
The most common type of permissions are sharing links.
Sharing links provide a unique URL that includes both the resource being shared
and an authentication token that provides access to the resource. Users don't
need to sign-in to access the content shared with a sharing link. Users can
share a link that gives read-only access to the content or writable access to
the content.

### View Link
A view link provides read-only access to an item.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-view-link" } -->
```json
{
  "id": "1",
  "roles": ["read"],
  "link": {
    "type": "view",
    "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

### Edit link
An edit link provides read and write access to an item.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-edit-link" } -->
```json
{
  "id": "2",
  "roles": ["write"],
  "link": {
    "type": "edit",
    "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```
### Specific people link

This link provides read and write access to the specific people in the `grantedToIdentities` collection.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-people-link" } -->

```json
{
  "id": "3",
  "grantedToIdentities": [
    {
       "user": {
        "id": "35fij1974gb8832",
        "displayName": "Misty Suarez"
      }
    },
    {
       "user": {
        "id": "9397721fh4hgh73",
        "displayName": "Judith Clemons"
      }
    }
  ],
  "grantedToIdentitiesV2": [
    {
       "user": {
        "id": "35fij1974gb8832",
        "displayName": "Misty Suarez"
      },
      "siteUser": {
        "id": "1",
        "displayName": "Misty Suarez",
        "loginName": "Misty Suarez"
      }
    },
    {
       "user": {
        "id": "9397721fh4hgh73",
        "displayName": "Judith Clemons"
      },
      "siteUser": {
        "id": "2",
        "displayName": "Judith Clemons",
        "loginName": "Judith Clemons"
      }
    }
  ],
  "roles": ["write"],
  "link": {
    "webUrl": "https://contoso.sharepoint.com/:w:/t/design/a577ghg9hgh737613bmbjf839026561fmzhsr85ng9f3hjck2t5s",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

### Existing access link

This link does not grant any additional privileges to the user.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-existing-link" } -->

```json
{
  "id": "00000000-0000-0000-0000-000000000000",
  "roles": ["read"],
  "link": {
    "scope": "existingAccess",
    "type": "view",
    "webUrl": "https://contoso.sharepoint.com/:w:/t/design/Shared%20Documents/SampleDoc.docx?d=w12345",
  },
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

### Sharing Invitation
In addition to creating sharing links, a user can be invited by e-mail address.
In this scenario the permission creates an invitation that is sent to the user's
email.

#### Invitation to an email address
If the permission was sent via an email address to a recipient who does not have
a matching account, the **grantedTo** property may not be set until the
invitation is redeemed, which occurs the first time a user clicks the link and
signs in.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-invite-email" } -->
```json
{
  "id": "1",
  "roles": ["write"],
  "invitation": {
    "email": "jd@contoso.com",
    "signInRequired": true
  },
  "shareId": "FWxc1lasfdbEAGM5fI7B67aB5ZMPDMmQ11U",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

After the sharing invitation has been redeemed by a user, the **grantedTo**
property will contain the information about the account that redeemed the permissions:

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-invite-redeemed" } -->
```json
{
  "id": "1",
  "roles": ["write"],
  "grantedTo": {
    "user": {
      "id": "5D33DD65C6932946",
      "displayName": "Robin Danielsen"
    }
  },
  "grantedToV2": {
    "user": {
      "id": "5D33DD65C6932946",
      "displayName": "Robin Danielsen"
    },
    "siteUser": {
      "id": "1",
      "displayName": "Robin Danielsen",
      "loginName": "Robin Danielsen"
    }
  },
  "invitation": {
    "email": "rd@contoso.com",
    "signInRequired": true
  },
  "shareId": "FWxc1lasfdbEAGM5fI7B67aB5ZMPDMmQ11U",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

## Methods

| Method                                                   | REST Path
|:---------------------------------------------------------|:-----------------------
| [List permissions](../api/driveitem-list-permissions.md) | `GET /drive/items/{item-id}/permissions`
| [Get permission](../api/permission-get.md)               | `GET /drive/items/{item-id}/permissions/{id}`
| [Add](../api/driveitem-invite.md)                        | `POST /drive/items/{item-id}/invite`
| [Update](../api/permission-update.md)                    | `PATCH /drive/items/{item-id}/permissions/{id}`
| [Delete](../api/permission-delete.md)                    | `DELETE /drive/items/{item-id}/permissions/{id}`
| [Add users to sharing link](../api/permission-grant.md)  | `POST /shares/{encoded-sharing-url}/permission/grant`

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The permission object provides information about permissions and roles and sharing information.",
  "keywords": "sharing,permissions,read,write,acl",
  "section": "documentation",
  "tocPath": "Resources/Permission"
} -->
