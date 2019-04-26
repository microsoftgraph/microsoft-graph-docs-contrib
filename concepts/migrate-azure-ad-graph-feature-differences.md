---
title: "Feature differences between Azure AD Graph and Microsoft Graph"
description: "Describes feature differences between Azure Active Directory (Azure AD) API and Microsoft Graph API, in order to help you migrate apps quickly and easily."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Feature differences between Azure AD Graph and Microsoft Graph

Many features in Microsoft Graph work similarly to their Azure AD Graph counterparts. However, a few have been changed and/or improved. Here, you'll learn how to adapt your apps to take advantage of these differences.  Frequently, the changes are minor, but well worth the effort.

Here, we look at how Microsoft Graph handles:

- Key identifiers
- Default properties
- Relationships (navigation properties)
- Directory schema extensions
- Differential queries
- Batching

We strongly recommend using the [Graph Explorer](https://aka.ms/ge) to try these features against your own data, as it's a great way to learn about the request and response differences.

## Key identifiers: objectId vs id

In Azure AD Graph, all entity resource types have a unique identifier (or key) called `objectId`.  For the most part (unless otherwise stated) this same identifier is called `id` in Microsoft Graph.

## Default properties and $select

Use the $select query parameter to customize the response to include all the properties that your app requires.

When a Microsoft Graph v1.0 request returns user or group resources, the properties are limited to a sub-set called _default properties_. The default properties represent the most commonly-used properties for a resource. On the other hand, Azure AD Graph (and Microsoft Graph beta version) returns the full set of all properties.

To get other properties in v1.0, your app needs to explicitly request them, using the $select query parameter. This includes any directory schema extensions your app might be using. It's a best practice to only request the properties your app really needs.

To illustrate the difference, use Graph Explorer to run the following requests and compare the different responses.

```http
GET https://graph.microsoft.com/v1.0/me/
GET https://graph.microsoft.com/beta/me/
```

Review the responses from each query. You'll notice that address information is returned by the /beta version, but not the /v1.0 version.  That's because the address properties aren't in the default property set.

If your app relies on the address properties, you need to update your v1.0 requests to include the $select query parameter:

```http
https://graph.microsoft.com/beta/me/?$select=displayName,streetAddress,city,state,postalCode
```

The response for this request would include the address properties.  It also includes the displayName property, but only because it was specified by the query parameter.

To learn more about:

- Default properties on user, see [users](/graph/api/resources/users?view=graph-rest-1.0)
- The $select parameter and other supported ODATA query parameters, see [Use query parameters to customize responses](/graph/query-parameters).
- This and other recommended optimizations, see [Best practices](/graph/best-practices-concept).

## Relationships and navigation properties

Relationships (or navigation properties) are a key concept in Azure AD Graph and Microsoft Graph, creating a network of related resources. For example, the manager and directReports properties extend the user resource to provide organizational hierarchy.  

Relationships also define memberships, such as the groups a user belongs to, the members belonging to a group or a directory role, and so on.

Azure AD Graph requests use `$link` to indicate relationships between resources.  In Microsoft Graph this uses the ODATA 4.01 `$ref` notation instead.

The following table shows several examples:

| Task | Azure AD Graph | Microsoft Graph |
|------|----------------|-----------------|
| Add member        | ```POST /groups/{id}/$link/members```        | ```POST /groups/{id}/members/$ref```        |
| List member links | ```GET /groups/{id}/$link/members```         | ```GET /groups/{id}/members/$ref```         |
| List members      | ```GET /groups/{id}/members```                | ```GET /groups/{id}/members```               |
| Remove member     | ```DELETE /groups/{id}/$link/members/{id}``` | ```DELETE /groups/{id}/members/{id}/$ref``` |

When migrating your apps to Microsoft Graph, look for requests that use `$link` to associate resources; change these to use `$ref` instead.

In addition, take time to explore features and services supported by 

## Directory schema extensions

If your app uses Azure AD Graph directory schema extensions, you can continue to use the same basic APIs (with Microsoft Graph request URLs) to:

- read extension values using GET and $select
- search on extension values using GET and $filter
- update extension values using PATCH
- remove extension values using PATCH (set to `null`)

However, Microsoft Graph doesn't provide a way to manage Azure AD Graph directory schema extension definitions or to view all schema extension definitions available in a tenant.

Instead, Microsoft Graph provides an enhanced schema extensions developer experience, which today is not backwards compatible with Azure AD Graph directory schema extentions. To learn more, see [schema extensions in add custom data](/graph/extensibility-overview#schema-extensions).

### Recommended migration approach

You can take an incremenatal approach to migrating to Microsoft Graph.

In the first step, make an initial update that leverages existing Azure AD Graph directory schema extensions, but switch your app to using Microsoft Graph API calls.

Later, you can switch to using Microsoft Graph schema extensions. In some cases, switching will not be appropriate. Do not switch if:

- your app uses directory schema extensions created through AD Connect, or
- your app relies on directory schema extension values in token claims.

>**NOTE**: Exposing Microsoft Graph schema extension properties as claims in a token using optional claims is also not yet supported.

If you do want to switch to the newer Microsoft Graph schema extension model, you'll need to:

- Define new schema extension definitions using Microsoft Graph.
- Update the app to support the new schema extension definitions.
- Migrate the data from the Azure AD schema extension properties in the new Microsoft Graph schema extension properties.  Automatic migration of data is not supported.

## Differential queries

Azure AD Graph and Microsoft Graph let you track changes using queries.  The high-level approach is similar between the two APIs, but the syntax is different for Microsoft Graph.  

Azure AD Graph calls these differential queries.  In Microsoft Graph, they're [delta queries](/graph/delta-query-overview).

The following table highlights key similarities and differences:

||Azure AD Graph | Microsoft Graph |
|----|----|----|
| _Initial data request_ | Uses a query parameter:<br>`GET /groups?deltaLink=` | Uses a function: <br> `GET /groups/delta` |
| _Get new changes_ | `GET /groups?deltaLink={deltaToken}` | `GET /groups/delta?$deltaToken={deltaToken}` |
| _Sync from now_ |Uses a custom HTTP header <br> `ocp-aad-dq-include-only-delta-token: true` | Uses a query parameter. <br> `GET /groups/delta?$deltaToken=latest` |
| _Track changes for directoryObjects_ | Gets changes for multiple resource (user and group) at the same time. (Example is shortened.)&nbsp;&nbsp;<br> `GET /directoryObject?$filter=isof('User') or isof('Group')&deltaLink=` | Not directly supported. Use separate queries with Microsoft Graph, one for each resource. |
| _Get resource and relationship changes_ | All requests will return resource and relationship changes, if the resource has relationships. | `GET /groups/delta?$expand=members` |
| _Response indicating new and changed items_ | <ul><li><p>Newly created instances are represented using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as the `directoryLinkChange` type.</p></li></ul>|<ul><li><p>Newly created instances are represented using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as annotations on the standard resource representation. These annotations use the format `propertyName@delta`, for example `members@delta` for a group's membership changes.</p></li></ul> |
| _Response indicating  deleted items_| A deleted item is indicated with an additional property of *aad.isDeleted* set to true. | A deleted item is indicated with the \@removed annotation. It may also contain a reason code, indicating if the item was deleted, but can be restored, or is permanently deleted. |

If your app is already storing state data, consider using the "sync from now" shown earlier to help manage the transition to delta queries.

## Batching

The syntax for batch operations has changed in Microsoft Graph and you'll need to update your app accordingly.

Azure AD Graph used a system called multi-part MIME messages to manage batching.  Microsoft Graph uses [JSON batching](json-batching.md) to permit up to 20 requests in a single batch operation. The JSON batching mechanism is significantly simpler to use, especially together with JSON parsing libraries.  It also allows for sequencing batch operations.

## Next Steps

- Learn about [resource differences](migrate-azure-ad-graph-resource-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [add custom data](/graph/extensibility-overview) for information about open and schema extensions.
- Explore [delta queries](/graph/delta-query-overview) to learn about Microsoft Graph's version of differential query.
- Explore [JSON batching](json-batching.md) to understand how batching works in Microsoft Graph.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Warning: /concepts/migrate-azure-ad-graph-feature-changes.md:
      Failed to parse any rows out of table with headers: |Task|Azure AD Graph|Microsoft Graph|"
  ],
}
-->
