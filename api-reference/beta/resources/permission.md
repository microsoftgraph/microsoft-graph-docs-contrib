---
author: spgraph-docs-team
title: permission resource type
description: permission resource representing a sharing permission granted for a driveItem
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 05/23/2024
---
# permission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **permission** resource provides information about a sharing permission granted for a [driveItem](driveitem.md) resource.

Sharing permissions have many different forms.
The **permission** resource represents these different forms through facets on the resource.

>**Note:** OneDrive for Business and SharePoint document libraries do not return the **inheritedFrom** property.

OneDrive for Business and SharePoint document libraries don't return the **inheritedFrom** property.
**grantedTo** and **grantedToIdentities** are deprecated going forward and the response is migrated to **grantedToV2** and **grantedToIdentitiesV2** respectively under appropriate property names.


## Methods

| Method                                                   | REST Path|
|:---------------------------------------------------------|:-----------------------|
| [List permissions](../api/driveitem-list-permissions.md) | `GET /drive/items/{item-id}/permissions`|
| [Get permission](../api/permission-get.md)               | `GET /drive/items/{item-id}/permissions/{id}`|
| [Create link][createLink]                                | `POST /drive/items/{item-id}/createLink`|
| [Invite people][invite]                                  | `POST /drive/items/{item-id}/invite`
| [Update permission](../api/permission-update.md)                    | `PATCH /drive/items/{item-id}/permissions/{id}`|
| [Delete permission](../api/permission-delete.md)                    | `DELETE /drive/items/{item-id}/permissions/{id}`|
| [Grant access to sharing link](../api/permission-grant.md)  | `POST /shares/{encoded-sharing-url}/permission/grant`|
| [Revoke grants on sharing link](../api/permission-revokegrants.md)   | `POST /drive/items/{item-id}/permissions/{id}/revokeGrants`|



## Properties

| Property                         | Type                                      | Description |
|:---------------------------------|:------------------------------------------|:------------------------- |
| id                               | String                                    | The unique identifier of the permission among all permissions on the item. Read-only. |
| grantedToV2                      | [SharePointIdentitySet][]                 | For user type permissions, the details of the users and applications for this permission. Read-only. |
| grantedToIdentitiesV2            | Collection([SharePointIdentitySet][])     | For link type permissions, the details of the users to whom permission was granted. Read-only. |
| invitation                       | [SharingInvitation][]                     | Details of any associated sharing invitation for this permission. Read-only. |
| inheritedFrom                    | [ItemReference][]                         | Provides a reference to the ancestor of the current permission, if inherited from an ancestor. Read-only. |
| link                             | [SharingLink][]                           | Provides the link details of the current permission, if it's a link type permission. Read-only. |
| roles                            | Collection(String)                        | The type of permission, for example, `read`. See the Roles property values section for the full list of roles. Read-only. |
| shareId                          | String                                    | A unique token that can be used to access this shared item via the **[shares API][]**. Read-only. |
| expirationDateTime               | DateTimeOffset                            | A format of yyyy-MM-ddTHH:mm:ssZ of DateTimeOffset indicates the expiration time of the permission. DateTime.MinValue indicates there's no expiration set for this permission. Optional. |
| hasPassword                      | Boolean                                   | Indicates whether the password is set for this permission. This property only appears in the response. Optional. Read-only. For OneDrive Personal only. |
| grantedTo (deprecated)           | [IdentitySet](identityset.md)             | For user type permissions, the details of the users and applications for this permission. Read-only. |
| grantedToIdentities (deprecated) | Collection([IdentitySet](identityset.md)) | For type permissions, the details of the users to whom permission was granted. Read-only. |

### Roles property values

| Value           | Description                                                                        |
|:----------------|:-----------------------------------------------------------------------------------|
| read            | Provides the ability to read the metadata and commment on the contents of the item.|
| write           | Provides the ability to read and modify the metadata and contents of the item.     |
| owner           | For SharePoint and OneDrive for Business, it represents the owner role.           |

The permission resource uses _facets_ to provide information about the kind of permission represented by the resource.

Sharing links contain a unique token required to access the item.

Permissions with an [**invitation**][SharingInvitation] facet represent permissions added by inviting specific users or groups to have access to the file.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

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
## Remarks

### Sharing links

Permissions with a [**link**][SharingLink] facet represent sharing links created on the item.
This type of permissions are the most commonly used.
Sharing links provide a unique URL that can be used to access a file or folder.
They can be set up to grant access in various ways.
For example, you can use the [createLink][] API to create a link that works for anyone signed into your organization, or you can create a link that works for anyone, without needing to sign in.
You can use the [invite][] API to create a link that only works for specific people, whether they're in your company or not.

Here are some examples of sharing links.

#### View link

This view link provides read-only access to anyone with the link.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-view-link" } -->

```json
{
  "id": "1",
  "roles": ["read"],
  "link": {
    "scope": "anonymous",
    "type": "view",
    "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

#### Edit link

This edit link provides read and write access to anyone in the organization with the link.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-edit-link" } -->

```json
{
  "id": "2ceefb3g32hh",
  "roles": ["write"],
  "link": {
    "scope": "organization",
    "type": "edit",
    "webUrl": "https://contoso.sharepoint.com/:w:/t/design/fj277ghautbb422707565gnvg23",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

#### Existing access link

This link doesn't grant any additional privileges to the user.

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

#### Specific people link

This link provides read and write access to the specific people in the `grantedToIdentities` collection.

<!-- {"blockType": "example", truncated: true, "@odata.type": "microsoft.graph.permission", "name": "permission-people-link" } -->

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

### Sharing invitations

Permissions sent by the [invite][] or [grant][] API can have additional information in the [invitation][SharingInvitation] facet for email addresses that don't match a known account. In such cases, the **grantedTo** property might not be set until the invitation link is redeemed, which occurs the first time the user clicks the link and signs in.

<!-- {"blockType": "example", truncated: true, "@odata.type": "microsoft.graph.permission", "name": "permission-invite-email" } -->

```json
{
  "id": "1",
  "roles": ["write"],
  "invitation": {
    "email": "jd@fabrikam.com",
    "signInRequired": true
  },
  "shareId": "FWxc1lasfdbEAGM5fI7B67aB5ZMPDMmQ11U",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

After the sharing invitation has been redeemed by a user, the **grantedTo** property will contain the information about the account that redeemed the permissions:

<!-- {"blockType": "example", truncated: true,"@odata.type": "microsoft.graph.permission", "name": "permission-invite-redeemed" } -->

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

[createLink]: ../api/driveitem-createlink.md
[grant]: ../api/permission-grant.md
[IdentitySet]: identityset.md
[invite]: ../api/driveitem-invite.md
[ItemReference]: itemreference.md
[shares API]: ../api/shares-get.md
[SharingInvitation]: sharinginvitation.md
[SharingLink]: sharinglink.md
[SharePointIdentitySet]: sharePointIdentitySet.md

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "The permission object provides information about permissions and roles and sharing information.",
  "keywords": "sharing,permissions,read,write,acl",
  "section": "documentation",
  "tocPath": "Resources/Permission",
  "suppressions": []
}
-->
