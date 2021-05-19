---
title: External groups
description: Concept page for external groups
author: mecampos
doc_type: conceptualPageType
---
# External groups overview 

To manage security trimming on Microsoft Graph connections that are governed by Azure Active Directory (AAD) identities, you can simply associate the ACLs with AAD user and group IDs when you create or update the external items as shown below.


```json
PUT https://graph.microsoft.com/beta/connections/{id}/items/{id}  
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
However, external data sources often use custom groups or group-like constructs that are not represented in AAD for authorization. In such situations, we recommend that you use external groups, a new feature of Microsoft Graph connectors. External groups enable you to manage security trimming for external items that are governed by non-AAD identities.  

Here are some common non-AAD application-specific group examples.

1. Microsoft Dynamics 365 allows customers to structure their CRMs with Business Units and Teams. The membership information for these Business Units and Teams is not stored in AAD.

Figure 1. Business Units & Teams in Dynamics 365 

2. Salesforce uses profiles, roles, and permission sets for authorization. These are specific to Salesforce, and the membership information is not available in AAD.

Figure 2. Roles in Salesforce

## Using external groups

To use external groups for your connections that use application-specific, non-AAD identities for permission control, do the following:

* For each non-AAD group, create an external group in Microsoft Graph using the Groups API.
* Use the external group when defining the ACL for your external items as necessary.  
* Keep the membership of the external groups up to date and in sync.

### Create external groups

External groups are scoped to a connection. For each application-specific, non-AAD group associated with your connection, create an external group using the Groups API in Microsoft Graph as shown below. For the id field, you can provide an identifier or the external group (128-character, base 64 ) that is unique within the connection. The displayName and description are optional fields.


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
* Another external group (external groups support nested external groups!)

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
PUT https://graph.microsoft.com/beta/connections/{id}/items/{id}  
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

You can use the Groups API to manage your external groups and group membership. See externalGroup and externalGroupMember for detailed API information.

## Related

Microsoft Graph connectors API overview (link to doc)