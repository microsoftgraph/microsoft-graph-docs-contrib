---
title: External groups
description: Concept page for external groups
author: mecampos
doc_type: conceptualPageType
---
# External groups overview 

The access control list is used to specify who has permissions to view [external items](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) in a Microsoft Graph connection, in Microsoft 365 experiences such as Search and Intelligent Discovery. For data sources that rely on Azure Active Directory users and groups, setting permissions on external items is as simple as associating the ACLs with an AAD user and group ID when creating or updating the external item as shown below.

```json
PUT https://graph.microsoft.com/beta/exernal/connections/{id}/items/{id}  
Content-type: application/json  
{  
  "@odata.type": "microsoft.graph.externalItem",  
  "acl": [  
   {  
      "type": "user",  
      "value": "87e9089a-08d5-4d9e-9524-b7bd6be580d5",  
      "accessType": "grant",  
      "identitySource": "Azure Active Directory"  
    },  
{  
      "type": "group",  
      "value": "96fbeb4f-f71c-4405-9f0b-1d6988eda2d2",  
      "accessType": "deny",  
      "identitySource": "Azure Active Directory"  
    }  
  ],  
  "properties": {  
    "title": "Error in the payment gateway",  
    "priority": 1,  
    "assignee": "john@contoso.com"  
  },  
  "content": {  
    "value": "<h1>Error in payment gateway</h1><p>Error details...</p>",
    "type": "html"  
  }  
}
```

However, for data sources that use non-AAD groups or group-like constructs, is recommended that you use [external groups](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true), a new feature of Microsoft Graph connectors. External groups enable you to manage security trimming for external items that are governed by non-AAD identities.

Here are two common non-AAD application-specific group examples.

1. Microsoft Dynamics 365 allows customers to structure their CRMs with Business Units and Teams. The membership information for these Business Units and Teams is not stored in AAD.

:::image type="content" source="images/connectors-images/bu-teams-D365.png" alt-text="Example of Business Units and Teams in Dynamics 365":::
*Figure 1. Business Units & Teams in Dynamics 365*

2. Salesforce uses profiles, roles, and permission sets for authorization. These are specific to Salesforce, and the membership information is not available in AAD.

:::image type="content" source="images/connectors-images/roles-salesforce.png" alt-text="Example of Roles in Salesforce":::
*Figure 2. Roles in Salesforce*

## Using external groups

To use external groups for your connections that use application-specific, non-AAD identities for permission control, do the following:

* For each non-AAD group, create an external group in Microsoft Graph using the Groups API.
* Use the external group when defining the ACL for your external items as necessary.  
* Keep the membership of the external groups up to date and in sync.

### Create external groups

External groups are scoped to a connection. For each application-specific, non-AAD group associated with your connection, create an external group using the Groups API in Microsoft Graph as shown below. For the [id](/graph/api/resources/externalitem?view=graph-rest-beta#properties&preserve-view=true) field, you can provide an identifier or the external group that is unique within the connection. The [displayName](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) and description are optional fields.

> [!NOTE]
> * The id field has a 128-character maximum limit.
> * URL and  FileName Safe Base 64 Character Set are allowed.

```json
POST /connections/{id}/externalGroups   
{  
"id": "contosoEscalations",  
"displayName": "Contoso Escalations",  
"description": "Tier-1 escalations within Contoso"  
}
```
An external group can contain one or more of the following:

* An AAD user
* An AAD group
* Another external group (external groups support nested external groups)

After you create the group, you can add members to the group as shown below.


```json
POST /connections/{id}/externalgroups/{id}/externalGroupMembers  
{  
    "id": "contosoSupport",  
    "type": "group",  
    "identitySource": "external"  
}
```

```json
POST /connections/{id}/ externalgroups/{id}/ externalGroupMembers  
{  
    "id": "25f143de-be82-4afb-8a57-e032b9315752",  
    "type": "user",  
    "identitySource": "Azure Active Directory"  
}
```

```json
POST /connections/{id}/ externalgroups/{id}/ externalGroupMembers  
{  
    "id": "99a3b3d6-71ee-4d21-b08b-4b6f22e3ae4b",  
    "type": "group",  
    "identitySource": "Azure Active Directory"  
}
```

### Use external groups in the ACLs

You can use external groups when defining ACLs for external items. In addition to AAD users and AAD groups, an external item can have external groups in its ACEs, as shown below.


```json
PUT https://graph.microsoft.com/beta/external/connections/{id}/items/{id}  
Content-type: application/json  
{  
  "@odata.type": "microsoft.graph.externalItem",  
  "acl": [  
    {  
      "type": "group",  
      "value": "contosEscalations",  
      "accessType": "grant",  
      "identitySource": "External"  
    },  
{  
      "type": "user",  
      "value": "87e9089a-08d5-4d9e-9524-b7bd6be580d5",  
      "accessType": "grant",  
      "identitySource": "Azure Active Directory"  
    },  
{  
      "type": "group",  
      "value": "96fbeb4f-f71c-4405-9f0b-1d6988eda2d2",  
      "accessType": "deny",  
      "identitySource": "Azure Active Directory"  
    }  
  ],  
  "properties": {  
    "title": "Error in the payment gateway",  
    "priority": 1,  
    "assignee": "john@contoso.com"  
  },  
  "content": {  
    "value": "<h1>Error in payment gateway</h1><p>Error details...</p>",
    "type": "html"  
  }  
}
```
> [!NOTE]
> You can use external groups in the ACLs even before the groups are created.

### Keep external group memberships in sync

You will need to ensure that external group memberships are up to date in Microsoft Graph. When memberships change in your custom group, make sure that the change is reflected in the external group at a time that works for your needs.

### Manage external groups and membership

You can use the Groups API to manage your external groups and group membership. See [externalGroup](graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) and [externalGroupMember](https://docs.microsoft.com/graph/api/resources/externalgroupmember?view=graph-rest-beta&preserve-view=true) for detailed API information.

## Related

Microsoft Graph connectors API overview (link to doc)