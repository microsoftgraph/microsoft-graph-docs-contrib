---
title: "Feature differences between Azure AD Graph and Microsoft Graph | Microsoft Graph"
description: "Describes feature differences between Azure Active Directory (Azure AD) API and Microsoft Graph API, in order to help you migrate apps quickly and easily."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Feature differences between Azure AD Graph and Microsoft Graph

Many features in Microsoft Graph work similarly to their Azure AD Graph counterparts. However, a few have been changed and/or improved. Here, you'll learn how to adapt you apps to take advantage of these differences.  Frequently, the changes are minor, but well worth the effort.

Here, we look at how Microsoft Graph handles:

- Default properties
- Relationships (navigation properties)
- Directory schema extensions
- Differential queries
- Batching

We strongly recommend using the [Graph Explorer](https://aka.ms/ge) to try these features against your own data, as it's a great way to learn about the requests and response differences.

## Default properties and $select

When a Microsoft Graph v1.0 request returns user or group resources, the properties are limited to a sub-set called _default properties_. On the other hand, Azure AD Graph (and Microsoft Graph beta version) returns the full set of all properties.

The default properties represent the most commonly-used properties for a resource.  To get other properties in v1.0, apps need to explicitly request them, using the $select query parameter. In general, it's a good practice to only request the properties your app really needs.

To illustrate the difference, use Graph Explorer to run the following requests and compare the different responses.

```http
GET https://graph.microsoft.com/v1.0/me/
GET https://graph.microsoft.com/beta/me/
```

If you review the responses from each query, you'll notice that address information is returned by the /beta version, but not the /v1.0 version.  That's because the address fields aren't default properties.

If your app relies on the address fields, you need to update your v1.0 requests to include those fields in the JSON response using the $select query parameter:

```http
https://graph.microsoft.com/beta/me/?$select=displayName,streetAddress,city,state,postalCode
```

Here the response includes the address fields.  It also includes the displayname field, but only because it was specified by the query parameter.  

When using $select to customize the response object, be sure to include all fields needed by your app. The $select query parameter and other ODATA query parameters are supported for both beta and v1.0 requests.

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

In addition, take time to explore features and services supported by Microsoft Graph that aren't supported by Azure AD Graph; you may find that there are easier ways to accomplish certain tasks, which in turn can simplify your code.

## Directory schema extensions

If your app uses Azure AD Graph directory schema extensions, there's some good news and a few challenges. The good news is that you can continue to use the same basic extension APIs to:

- read and filter
- update
- remove (set to `null`) extension values

simply by changing the service URL of your existing requests.

However, Microsoft Graph doesn't provide a way to manage Azure AD Graph directory schema extension definitions or to view all schema extension definitions available in a tenant.

Instead, Microsoft Graph provides an newer schema extensions experience, which today is not backwards compatible with Azure AD Graph directory schema extentions. To learn more, see [schema extensions in add custom data](/graph/extensibility-overview#schema-extensions).

### Recommended migration approach

It's recommended to take in incremenatal approach to migrating to Microsoft Graph.

In the first step, make an initial update that leverages existing Azure AD Graph directory schema extensions, but switch to using Microsoft Graph API calls.

Later, if appropriate, you can switch to using Microsoft Graph schema extensions if this is appropriate. In some cases, switching will not be appropriate currently.  For example, do not switch if your app uses directory schema extensions created through AD Connect or your app relies on directory schema extension values in token claims.  NOTE: Exposing Microsoft Graph schema extension properties as claims in a token using optional claims is also not yet supported.

However, if you do want to switch to the newer Microsoft Graph schema extension model, you'll need to:

- Define new schema extension definitions using Microsoft Graph.
- Update the app to support the new schema extension definitions.
- Migrate the data from the Azure AD schema extension properties in the new Microsoft Graph schema extension properties.  Automatic migration of data is not supported.
- Deploy the update once you've verified parity with the previous implemention.

## Differential queries

Azure AD Graph and Microsoft Graph let you track changes using queries.  The high-level approach is similar between the two APIs, however, Microsoft Graph uses different syntax.  

Azure AD Graph calls these differential queries.  In Microsoft Graph, they're [delta queries](/graph/delta-query-overview).

The following table highlights key similarities and differences:

||Azure AD Graph | Microsoft Graph |
|----|----|----|
| _Initial data request_ | Uses a query parameter:<br>`GET /groups?deltaLink=` | Uses a function: <br> `GET /groups/delta` |
| _Get new changes_ | `GET /groups?deltaLink={deltaToken}` | `GET /groups/delta?$deltaToken={deltaToken}` |
| _Sync from now_ |Uses a custom HTTP header <br> `ocp-aad-dq-include-only-delta-token: true` | Uses a query parameter. <br> `GET /groups/delta?$deltaToken=latest` |
| _Track changes for directoryObjects_ | Gets changes for multiple resource (user and group) at the same time. (Example is shortened.)&nbsp;&nbsp;<br> `GET /directoryObject?$filter=isof('User') or` &nbsp; &nbsp; `isof('Group')&deltaLink=` | Not directly supported. Use separate queries with Microsoft Graph, one for each resource. |
| _Get resource and relationship changes_ | All requests will return resource and relationship changes, if the resource has relationships. | `GET /groups/delta?$expand=members` |
| _Response indicating new and changed items_ | <ul><li><p>Newly created instances are represented using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as the `directoryLinkChange` type.</p></li></ul>|<ul><li><p>Newly created instances are represented using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as annotations on the standard resource representation. These annotations use the format `propertyName@delta`, for example `members@delta` for a group's membership changes.</p></li></ul> |
| _Response indicating  deleted items_| A deleted item is indicated with an additional property of *aad.isDeleted* set to true. | A deleted item is indicated with the \@removed annotation. It may also contain a reason code, indicating if the item was deleted, but can be restored, or is permanently deleted. |

If your app is already storing state data, consider using the "sync from now" shown earlier to help manage the transition to delta queries.

## Batching

The syntax for batch operations has changed in Microsoft Graph and you'll need to update your app accordingly.

Azure AD Graph used a system called multi-part MIME messages to manage batching.  Microsoft Graph uses [JSON batching](json-batching.md) to permit up to 20 requests in a single batch operation. The JSON batching mechanism is significantly simpler to use, especially together with JSON parsing libraries.  It also allows for sequencing batch operations.

## Next Steps

- Learn [app registration, permission, and consent](migrate-azure-ad-graph-app-registration.md) differences between Azure AD Graph and Microsoft Graph.
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
