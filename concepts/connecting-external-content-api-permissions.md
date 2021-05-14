---
title: Microsoft Graph connectors API permissions
description: Microsoft Graph connectors API permissions
author: mecampos
ms.topic: conceptual
---

# Microsoft Graph connectors API permissions

This topic provides the list of permissions that are required to authorize access to Graph Connector's data through Microsoft Graph APIs.

!Note ([!INCLUDE auth-use-least-privileged])

## Permission's names

API permissions are named using a three-part string: Resource.Action.Constraint. 
For example, ExternalItem.ReadWrite.All, grants permission to all resources in the tenant, such as, to reading and writinge an external item.

### Resources

[*Resource*] describes the target resource that is being accessed.
The following resource types are used with connectors:.

|Resource |Note  |
|---------|---------|
|ExternalConnection         |  This is the connection object. This permission implies having the permission location on the schema of the connection.       |
|ExternalConnectionSetting  |  This is the setting associated with the connection.      |
|ExternalItem               |  These are the external items, /groups, and/or /signals that are ingested to the connection.       |

### Actions

[*Action*] describes the activity that is performed against the resource.
The following are the available actions for the connectors:

|Action   |Note  |
|---------|---------|
|Read         | Read only permission.      |
|ReadWrite    | Read and write permission. |

### Constraints

[*Constraint*] describes the extent of access being granted.
The following are the constraints used with the connectors:

|Range  |Note  |
|---------|---------|
|All      | All resources in the tenant    |
|OwnedBy  | Resources that the app is authorized to access         |

## Delegated vs Application permissions

### Delegated permissions

The permissions for your application will depend on the privileges of the signed-in user in the organization. For example, the application can obtain an access token that includes a specific permission only if the signed-in user is available.

> [!NOTE]
> The signed-in user must be [Global Administrator] or [Search Administrator] for access.

### Application permissions

Specific the permissions are granted to the application without external approval. For example, a background application can obtain an access token that includes the permissions, without the signed-in user.

## Admin Consent

Global Administrator's consent is needed for any permission that has tenant-wide impact.
 
## Permissions

The following table shows the available permissions:
  

|Scope  |Note  |Delegated  |Application  |Admin consent  |Intended for  |Microsoft Account supported  |
|---------|---------|---------|---------|---------|---------|---------|
|ExternalConnection.Read.OwnedBy         |Can read the connections that are authorized to the app.                                  | No    | Yes        | Yes        | ISV             | No       |
|ExternalConnection.ReadWrite.All        |Can create new connections and read/write the connections that are authorized to the app. | Yes   | Yes        | Yes        | SI Note: ISV should not have ability to create new connection.|No |
|ExternalConnection.Read.All             |Can read any connections.                                                                 | Yes   | Yes        | Yes        | IT Admin        | No       |
|ExternalConnection.ReadWrite.All        |Can read/write any connection and create new connections.                                 | Yes   | Yes        | Yes        | IT Admin        | No       |
|ExternalConnectionSetting.Read.OwnedBy  |Can read the schema of the connections that are authorized to the app.                    | Yes   | Yes        | Yes        | ISV             | No       |
|ExternalConnectionSetting.ReadWrite     |Can read/write the schema of the connections that are authorized to the app.              | Yes   | Yes        | Yes        | ISV             | No       |
|ExternalItem.Read.OwnedBy               |Can read external items of the connections that are authorized to the app.                | Yes   | Yes        | Yes        | SI/ISV          | No       |
|ExternalItem.ReadWrite.All [1]          |Can read/write external items for any connections.                                        | No    | Yes        | Yes        | IT Admin        | No       |
|ExternalItem.ReadWrite.OwnedBy          |Can read/write external items of the connections that are authorized to the app.          | No    | Yes        | Yes        | SI/ISV          | No       |
|ExternalItem.Read.All [2]               |Can read external items for any connections.                                              | Yes   | Yes        | Yes        | IT Admin        | No       |
||

ISV = Independent Software Vendor

SI = System Integrators

> [!NOTE]
> [1] Coming Aug 2021: Breaking Changes for ExternalItem.ReadWrite.All
> *    The scope of the ExternalItem.ReadWrite.All permission is changing. Applications that were previously granted this permission will now have an elevation of privilege, and will be able to read and write external items of all connections in the tenant. On the other hand, applications with the ExternalItem.ReadWrite.All permission will no longer be able to manage connections and schema in the tenant. 
> *    If tenant administrators do not want to allow this elevation of privilege before August 2021, they should revoke consent for ExternalItem.ReadWrite.All, and grant consent for ExternalItem.ReadWrite.OwnedBy instead.
> *    Independent software vendors should request permissions for ExternalConnection.ReadWrite.OwnedBy before August 2021, if they do not want to be affected by the migration to the new access pattern for ExternalItem.ReadWrite.All.

    
> [!NOTE]
> [2] Special consideration for ExternalItem.Read.All
> ExternalItem.Read.All (delegate) is used for search scenarios, such as finding items the current signed-in user has access to by performing an ACL trimming.
> If it is used for a non-search scenario, it will allow the signed-in user to read the items of any connections in the tenant, using the ingestion API if the signed-in user is [Global Administrator] or [Search Administrator].

## Related resources

To learn more about the permissions of each major set of Microsoft Graph APIs, visit the Microsoft Graph permissions reference in the following link: Microsoft Graph permissions reference - Microsoft Graph | Microsoft Docs.
