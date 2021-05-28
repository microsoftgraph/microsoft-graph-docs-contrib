---
title: External groups
description: Concept page for external groups
author: mecampos
doc_type: conceptualPageType
ms.prod: search
---

# External groups

Manage security trimming for external items with [externalGroup](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) and connect to data sources outside Azure Active Directory groups.

<!--- add H2 here maybe --->

The access control list (ACL) is used to specify who has permissions to view [external items](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) in a Microsoft Graph connection, in Microsoft 365 experiences such as Search and Intelligent Discovery. For data sources that rely on Azure Active Directory users and groups, setting permissions on external items is as simple as associating the ACL with an AAD user and group ID when creating or updating the external item as shown below.

```http
PUT https://graph.microsoft.com/beta/exernal/connections/{id}/items/{id} 
Content-type: application/json 
{ 
 "@odata.type": "microsoft.graph.externalItem", 
 "acl": [ 
   { 
 "type": "user", 
 "value": "87e9089a-08d5-4d9e-9524-b7bd6be580d5", 
 "accessType": "grant", 
 "identitySource": "azureActiveDirectory" 
 }, 
{ 
 "type": "group", 
 "value": "96fbeb4f-f71c-4405-9f0b-1d6988eda2d2", 
 "accessType": "deny", 
 "identitySource": "azureActiveDirectory" 
 } 
 ], 
 "properties": { 
 "title": "Error in the payment gateway", 
 "priority": 1, 
 "assignee": "john@contoso.com" 
 }, 
 "content": { 
 "value": "<h1>Error in payment gateway</h1><p>Error details...</p>",
 "type": "json" 
 } 
}
```

However, for data sources that use non-Azure Active Directory groups (non-Azure AD groups), or group-like constructs, like Salesforce Profiles, Dynamics Business Units, SharePoint groups, ServiceNow local groups, Confluence local groups etc., is recommended that you use [external groups](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true), a new feature of Microsoft Graph connectors. External groups enable you to manage security trimming for external items that are governed by non-Azure AD identities.

The following are common non-Azure AD application-specific group examples.

1. Microsoft Dynamics 365 allows customers to structure their CRMs with Business Units and Teams. The membership information for these Business Units and Teams is not stored in AAD.

<!---Using json to adjust the size of the image --->
<br><img src="images/connectors-images/bu-teams-D365.png" alt="Example of Business Units and Teams in Dynamics 365" style="width:400px;"/>

*Figure 1. Business Units & Teams in Dynamics 365*

2. Salesforce uses profiles, roles, and permission sets for authorization. These are specific to Salesforce, and the membership information is not available in AAD.

<!---Using json to adjust the size of the image --->
<br><img src="images/connectors-images/roles-salesforce.png" alt="Example of Roles in Salesforce" style="width:400px;"/>

*Figure 2. Roles in Salesforce*

## Using external groups

To use external groups in your connections:

1. For each non-Azure AD group, create an external group in Microsoft Graph using the [Group API](/en-us/graph/api/resources/group?view=graph-rest-beta).
2. Use the external group when defining the ACL for your external items as necessary.  
3. Keep the membership of the external groups up to date and in sync.

### Create external groups

External groups are scoped to a connection. For each application-specific, non-Azure AD group associated with your connection, create an external group using the Group API in Microsoft Graph as shown below. For the [id](/graph/api/resources/externalitem?view=graph-rest-beta#properties&preserve-view=true) field, you can provide an identifier or the external group that is unique within the connection. The [displayName](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) and description are optional fields.

```http
POST /connections/{connectionId}/groups 
{ 
"id": "contosoEscalations", 
"displayName": "Contoso Escalations", 
"description": "Tier-1 escalations within Contoso" 
}
```

> [!NOTE]
> * The ID field has a limit of 128-character maximum.
> * URL and FileName Safe Base 64 Character Set are allowed.

An external group can contain one or more of the following:
* An AAD user
* An AAD group
* Another external group (external groups support nested external groups)
After you create the group, you can add members to the group as in the examples shown below.

```http
POST /connections/{connectionId}/groups/{groupId}/members
{ 
"id": "contosoSupport", 
"type": "group", 
"identitySource": "external" 
}
```
```http
POST /connections/{connectionId}/groups/{groupId}/members 
{ 
 "id": "25f143de-be82-4afb-8a57-e032b9315752", 
 "type": "user", 
"identitySource": "azureActiveDirectory" 
}
```
```http
POST /connections/{connectionId}/groups/{groupId}/members 
{ 
 "id": "99a3b3d6-71ee-4d21-b08b-4b6f22e3ae4b", 
 "type": "group", 
"identitySource": "Azure Active Directory" 
}
```

### Use external groups in the ACL

You can use external groups when defining ACL for external items. In addition to AAD users and AAD groups, an external item can have external groups in its ACEs, as shown next.
```http
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
 "identitySource": "azureActiveDirectory" 
 }, 
{ 
 "type": "group", 
 "value": "96fbeb4f-f71c-4405-9f0b-1d6988eda2d2", 
 "accessType": "deny", 
 "identitySource": "azureActiveDirectory" 
 } 
 ], 
 "properties": { 
 "title": "Error in the payment gateway", 
 "priority": 1, 
 "assignee": "john@contoso.com" 
 }, 
 "content": { 
 "value": "<h1>Error in payment gateway</h1><p>Error details...</p>",
 "type": "json" 
 } 
}
```

> [!NOTE]
> You can use external groups in the ACL even before the groups are created.

### Keep external group memberships in sync

You need to ensure that external group memberships are up to date in Microsoft Graph. When memberships change in your custom group, make sure that the change is reflected in the external group at a time that works for your needs.

### Manage external groups and membership

You can use the Groups API to manage your external groups and group membership. See [externalGroup](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) and [externalGroupMember](/graph/api/resources/externalgroupmember?view=graph-rest-beta&preserve-view=true) for detailed API information.

## Related
To learn more about the Microsoft Graph connectors API, visit the following link: [Working with the connectors API](connecting-external-content-connectors-api-overview.md)