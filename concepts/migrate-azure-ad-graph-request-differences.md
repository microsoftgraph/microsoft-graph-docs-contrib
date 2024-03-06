---
title: "Request differences between Azure AD Graph and Microsoft Graph"
description: "Describes how Microsoft Graph requests differ from Azure Active Directory (Azure AD) Graph requests, which helps migrate apps to the newer service."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: medium
ms.prod: "applications"
ms.date: 01/12/2024
#Customer intent: As a developer, I want to understand how REST API endpoints differ between Azure AD Graph and Microsoft Graph, so that I can update my code accordingly as I migrate my app from Azure AD Graph to Microsoft Graph.
---

# Request differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

Microsoft Graph and the Azure Active Directory (Azure AD) Graph API are both REST APIs that support OData conventions for query parameters. However, the syntax varies between these two APIs.

Use [Graph Explorer](https://aka.ms/ge) to try these request patterns against your own data and learn about the request and response differences before you update your code.

## Basic requests

The following table highlights the main request differences between the two APIs:

|Request details| Azure AD Graph | Microsoft Graph |
|---|---|---|
|Request syntax| `https://graph.windows.net/{tenant_id}/{resource}?{version}&query-parameters` | `https://graph.microsoft.com/{version}/{resource}?query-parameters`|
|Service&nbsp;endpoints:||
|-&nbsp;Global|`https://graph.windows.net`|`https://graph.microsoft.com`|
|-&nbsp;US&nbsp;Gov&nbsp;L4|`https://graph.microsoftazure.us`|`https://graph.microsoft.us`|
|-&nbsp;US&nbsp;Gov&nbsp;L5&nbsp;(DOD)|`https://graph.microsoftazure.us`|`https://dod-graph.microsoft.us`|
|-&nbsp;Germany (Retired)|`https://graph.cloudapi.de`|`https://graph.microsoft.de`|
|-&nbsp;China&nbsp;(21Vianet)| `https://graph.chinacloudapi.cn`|`https://microsoftgraph.chinacloudapi.cn`|
|{tenant_id}|Specify the tenant ID or domain name in the request.|Optional. The tenant ID is inferred from the access token.<br><br>If you specify the tenant ID, use this syntax: `https://graph.microsoft.com/{version}/{tenant_id}/{resource}?query-parameters`.|
|{version}|Specify the release version of Azure AD Graph in the request using a required query parameter.|Specify the release version of Microsoft Graph in the request as part of the URL path just after the service endpoint.|

The query parameter syntax is the same for Microsoft Graph and Azure AD Graph. However, Microsoft Graph supports more query parameters and query capabilities than Azure AD Graph.

### Example request comparison

Suppose you want a list of all users with names beginning with "Dan" in the Contoso tenant. The following table shows the request differences between Azure AD Graph and Microsoft Graph.

|Azure AD Graph  |Microsoft Graph  |
|---------|---------|
|`GET https://graph.windows.net/contoso.com/users?$filter=startswith(givenName,'Dan')&api-version=1.6`  |  `GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName,'Dan')`       |

### Primary key identifiers: objectId vs id

In Azure AD Graph, all entity resource types have a unique identifier (or primary key) called **objectId**.  For most entities (unless otherwise stated) this identifier is called **id** in Microsoft Graph.

In addition to the primary key, some entities support an alternate key identifier. For example, the **application** and **servicePrincipal** resources in Microsoft Graph support an alternate key identifier for their **appId** property.

## Default properties and $select

It's a best practice to only request the properties your app really needs. Use the `$select` query parameter, in GET requests, to customize the response to include only the properties that your app requires.

In some cases in Microsoft Graph, for example, the **GET** or **LIST** operations for **user** and **group** resources, only a subset of all properties are returned. These _default properties_ represent the most commonly used properties for the resources. On the other hand, Azure AD Graph returns the full set of all properties for the respective resource. Where the resource returns only the default properties, your app needs to explicitly request other properties using the `$select` query parameter.

To illustrate the difference, use Graph Explorer to run the following requests and compare the different responses.

```http
GET https://graph.microsoft.com/v1.0/me/
GET https://graph.microsoft.com/beta/me/
```

Notice the difference in the responses. The `/beta` version returns more properties than the `/v1.0` version. If your app relies on the **streetAddress** property for example, you need to update your `v1.0` requests to use the `$select` query parameter to request for the **streetAddress** property in addition to other properties the app needs. For example:

```http
https://graph.microsoft.com/v1.0/me?$select=displayName,streetAddress,city,state,postalCode
```

To learn more about:

- Default properties on user and group resources, see [users](/graph/api/resources/users) and [groups](/graph/api/resources/groups-overview)
- The `$select` parameter and other supported ODATA query parameters, see [Use query parameters to customize responses](./query-parameters.md).
- Other recommended optimizations, see [Best practices](./best-practices-concept.md).

## Relationships and navigation properties

Relationships (or navigation properties) are a key concept in Azure AD Graph and Microsoft Graph, creating a network of related resources. For example, the **manager** and **directReports** properties extend the user resource to provide organizational hierarchy.

Relationships also define memberships, such as the groups a user belongs to, the members belonging to a group or a directory role, and so on.

Azure AD Graph requests use `$links` to indicate relationships between resources. Microsoft Graph uses the OData v4.01 `$ref` notation instead.

The following table shows several examples:

| Task              | Azure AD Graph                            | Microsoft Graph                         |
|-------------------|-------------------------------------------|-----------------------------------------|
| Add member        | `POST /groups/{id}/$links/members`        | `POST /groups/{id}/members/$ref`        |
| List member links | `GET /groups/{id}/$links/members`         | `GET /groups/{id}/members/$ref`         |
| List members      | `GET /groups/{id}/members`                | `GET /groups/{id}/members`              |
| Remove member     | `DELETE /groups/{id}/$links/members/{id}` | `DELETE /groups/{id}/members/{id}/$ref` |

When migrating your apps to Microsoft Graph, update references that use `$links` to associate resources to use `$ref` instead.

## Next step

> [!div class="nextstepaction"]
> [Review the migration checklist again](migrate-azure-ad-graph-planning-checklist.md)
