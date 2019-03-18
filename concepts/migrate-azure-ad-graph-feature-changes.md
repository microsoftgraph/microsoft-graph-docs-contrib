---
title: "Review feature changes from Azure AD Graph to Microsoft Graph | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Review feature changes from Azure AD Graph to Microsoft Graph

Many features in Microsoft Graph work similarly to their Azure AD counterparts; however, a few have been improved. Here, you'll learn how to adapt you apps to take advantage of these differences.  Frequently, the changes are minor, but well worth the effort.

Here, we look at how Microsoft Graph handles:

- Default properties
- Relationships (navigation properties)
- Directory schema extensions
- Differential queries
- Batching

We strongly recommend using the [Graph Explorer](https://aka.ms/ge) to try these features against your own tenant. It's a good way to learn from actual request responses run against your own data.


### Default properties and $select

There are places where Microsoft Graph returns different responses or where it can.  For example, request against the user and group resources vary between the beta and v1.0 versions.

When a v1.0 request returns a user or group resource, the properties are limited to a sub
set called _default properties_.

Default properties represent the most commonly-used properties for a resource; they:

- Improve performance, by reducing the amount of processing needed to build a response).
- Reduce bandwidth, by reducing the size of the response object--especially for LIST requests.
- Reduce resource use in apps by reduce the amount of information that you need to manage.

For large operations, such as LIST requests that return large collections, the impact can be substantial.

To illustrate, use Graph Explorer to run the following requests and compare the different responses.

``` 
GET https://graph.microsoft.com/v1.0/me/
GET https://graph.microsoft.com/beta/me/
```

If you review the responses from each query, you'll notice that address information is returned by the /beta version, but not the /v1.0 version.  That's because the address fields aren't default properties.

If your app relies on the address fields, you need to update your v1.0 requests to include those fields in the response object.

Once way to do that is to use the $select query parameter:

```
https://graph.microsoft.com/beta/me/?$select=displayName,streetAddress,city,state,postalCode
```

Here's the response includes the address fields.  It also includes the displayname field, but only because it was specified by the query parameter.  

When using $select to customize the response object, be sure to include all fields needed by your app.

The $select query parameter and other ODATA query parameters are supported for both beta and v1.0 requests.

To learn more about:

- Default properties, see [user] and [group].
- The $select parameter and other supported ODATA query parameters, see []().


### Relationships and navigation properties

Relationships (or navigation properties) are a key concept in Azure AD Graph and Microsoft Graph. They link resources to other resources supported by other services.  For example, the manager and directReports properties extend the user resource to support services provided by an organizational context that might not apply to all users.  

Relationships also define memberships, such as the groups a user belongs to, directory roles assigned to the user, and so on.

Azure AD Graph requests use `$link` to define relationships between resources.  This has changed in Microsoft Graph, which uses `$ref` instead.

The following table shows several examples:

| Task | Azure AD Graph | Microsoft Graph |
|------|----------------|-----------------|
| Add member        | POST ../groups/{id}/\$link/members        | POST ../groups/{id}/members/\$ref        |
| List member links | GET ../groups/{id}/\$link/members         | GET ../groups/{id}/members/\$ref         |
| List members      | GET ../groups/{id}/members                | GET ../groups/{id}/members               |
| Remove member     | DELETE ../groups/{id}/\$link/members/{id} | DELETE ../groups/{id}/members/{id}/\$ref |

When migrating your apps to Microsoft Graph, look for requests that use `$link` to associate resources; change these to use `$ref` instead.

In addition, take time to explore features and services supported by Microsoft Graph that aren't supported by Azure AD Graph; you may find that there are easier ways to accomplish certain tasks, which in turn can simplify your code.

### Directory schema extensions

If your app uses Azure AD Graph directory schema extensions, there's good new and bad news.  The good news is that you can continue to use the same basic APIs to:

- read and filter 
- update
- remove (set to `null`) extension values

simply by changing the service URL of your existing requests. 

However, Microsoft Graph doesn't provide a way to manage schema extensions or to view all schema extensions made to a tenant.

Instead, Microsoft Graph provides an updated experience called [open extensions](#), which provides a better developer experience in a lighter-weight mechanism.  To learn more, see [Add custom data](/graph/extensibility-overview).

To migrate, we recommend the following approach: 

- Provide an initial update that leverages existing schema extensions using existing API calls.
- Update the app to support custom data extensions.
- Deploy the update once you've verified parity with the previous implemention.

### Differential queries

Azure AD Graph and Microsoft GRaph let you track changes using queries.  The high-level approach is similar between the two APIs, however, Microsoft Graph uses different syntax.  

Azure AD Graph calls these differential queries.  In Microsoft Graph, they're [delta queries](https://docs.microsoft.com/graph/delta-query-overview). 

The following table highlights key similarities and differences:

||Azure AD Graph | Microsoft Graph |
|----|----|----|
| _Initial data request_ | Uses a query parameter:<br>`GET ../groups?deltaLink=` | Uses a function: <br> `GET ../groups/delta` |
| _Get new changes_ | `GET ../groups?deltaLink={deltaToken}` | `GET ../groups/delta?\$deltaToken={deltaToken}` | 
| _Sync from now_ |Uses a custom HTTP header <br> `ocp-aad-dq-include-only-delta-token: true` | Uses a query parameter. <br> `GET ../groups/delta?\$deltaToken=latest` |
| _Track changes for directoryObjects_ | Gets changes for multiple resource (user and group) at the same time. (Example is shortened.)&nbsp;&nbsp;<br> `GET ../directoryObject?$filter=isof('User') or` &nbsp; &nbsp; `isof('Group')&deltaLink=` | Not directly supported. Use separate queries with Microsoft Graph, one for each resource. |
| _Get resource and relationship changes_ | TBD | `GET ../groups/delta?\$expand=members` |
| _Response indicating new and changed items_ | <ul><li><p>Newly created instances are represented using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as the directoryLinkChange type.</p></li></ul>|<ul><li><p>Newly created instances are represented using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as annotations on the standard resource representation. These annotations use the format propertyName\@delta.</p></li></ul> |
| _Response indicating  deleted items_| A deleted item is indicated with an additional property of *aad.isDeleted* set to true. | A deleted item is indicated with the \@removed annotation. It may also contain a reason code, indicating if the item was deleted, but can be restored, or is permanently deleted. |

If your app is already storing state data, consider using the "sync from now" shown earlier to help manage the transition to delta queries.

### Batching

The syntax for batch operations has changed in Microsoft Graph and you'll need to update your app accordingly.

Azure AD Graph used a system called multi-part MIME messages to manage batching.  Microsoft Graph uses [JSON batching](https://docs.microsoft.com/graph/json-batching) to permit up to 20 requests in a single batch operation.


TODO// - Do we need more to the story here?  Three sentences seems hardly sufficient. 

## Next Steps

- Learn about request differences between Azure AD Graph and Microsoft Graph.
- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).


<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Warning: /concepts/migrate-azure-ad-graph-feature-changes.md:
      Failed to parse any rows out of table with headers: |Task|Azure AD Graph|Microsoft Graph|"
  ],
}
-->
