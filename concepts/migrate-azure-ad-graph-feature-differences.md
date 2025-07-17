---
title: Feature differences between Azure AD Graph and Microsoft Graph
description: Understand differences in directory schema extensions, differential queries, and batching between Azure AD Graph and Microsoft Graph to update your app seamlessly.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: krbash
ms.topic: concept-article
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 03/17/2025

#customer intent: As a developer, I want to understand the differences in directory extensions, differential queries, and JSON batching between Azure AD Graph and Microsoft Graph so that I can update my app seamlessly.
---

# Feature differences between Azure AD Graph and Microsoft Graph

> This article is part of *Step 1: review API differences* in the [Azure AD Graph app migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) series.

Many features in Microsoft Graph work similarly to their Azure Active Directory (Azure AD) Graph counterparts. However, a few have changed or improved. This article explains how to adapt your apps to take advantage of these differences.

This article explores how Microsoft Graph handles:

- Directory schema extensions
- Differential queries
- Batching

## Directory extensions

If your app uses Azure AD Graph directory extensions, continue to use the same basic APIs (with Microsoft Graph request URLs) to:

- Manage directory extension definitions using the [extensionProperty](/graph/api/resources/extensionproperty) resource and associated methods.
- Get available extension properties using the [getAvailableExtensionProperties](/graph/api/directoryobject-getavailableextensionproperties) action.
- Read extension values using GET and for users, only with a `$select` query via the `v1.0` endpoint
- Search on extension values using GET and `$filter`
- Update extension values using PATCH
- Remove extension values using PATCH (set to **null**)

Microsoft Graph provides an enhanced schema extensions developer experience, which isn't backwards compatible with Azure AD Graph directory extensions. To learn more, see [Choose an extension type for your application](extensibility-overview.md#comparison-of-extension-types).

### Recommended migration approach

If your Azure AD Graph app uses directory extensions, take an incremental approach to migrate the app to Microsoft Graph.

First, switch your app to using Microsoft Graph API calls, but let the app continue to use Azure AD Graph directory extensions.

Then, switch to using Microsoft Graph schema extensions. In some cases, switching isn't appropriate. Don't switch if:

- Your app uses directory extensions created through AD Connect
- Your app sets directory extension values that are used in token claims by other apps
- Your app sets directory extension values that are used in dynamic membership rules 

>**NOTE**: Using Microsoft Graph schema extension properties as claims in a token using optional claims or in a dynamic membership rule is not yet supported.

To switch to the newer Microsoft Graph schema extension model, you need to:

- Define new schema extension definitions using Microsoft Graph.
- Update the app to support the new schema extension definitions.
- Migrate the data from the Azure AD Graph directory extension properties to the Microsoft Graph schema extension properties. Automatic migration of data isn't supported.

## Differential queries

Azure AD Graph and Microsoft Graph let you track changes using queries. The high-level approach is similar between the two APIs, but the syntax differs.

Azure AD Graph calls these differential queries while Microsoft Graph calls them [delta queries](./delta-query-overview.md).

The following table highlights key similarities and differences:

|Delta request |Azure AD Graph | Microsoft Graph |
|----|----|----|
| Initial data request | Uses a query parameter:<br>`GET /groups?deltaLink=` | Uses a function: <br> `GET /groups/delta` |
| Get new changes | `GET /groups?deltaLink={deltaToken}` | `GET /groups/delta?$deltaToken={deltaToken}` |
| Sync from now |Uses a custom HTTP header:<br> `ocp-aad-dq-include-only-delta-token: true` | Uses a query parameter: <br> `GET /groups/delta?$deltaToken=latest` |
| Track changes for directory objects| Gets changes for multiple resource (user and group) in the same operation:&nbsp;&nbsp;<br> `GET /directoryObject?$filter=isof('User') or isof('Group')&deltaLink=` | Uses separate queries with Microsoft Graph, one for each resource. |
| Get resource and relationship changes | All requests return resource and relationship changes, if the resource has relationships. | `GET /groups/delta?$expand=members` |
| Response indicating new and changed items | <ul><li><p>Represents newly created instances using their standard representation.</p></li><li><p>Updated instances are represented by their **id** with *at least* the properties that have been updated. Other properties can be included.</p></li><li><p>Relationships are represented as the `directoryLinkChange` type.</p></li></ul>|<ul><li><p>Represents newly created instances using their standard representation.</p></li><li><p>Updated instances are represented by their **id** with *at least* the properties that have been updated. Other properties can be included.</p></li><li><p>Relationships are represented as annotations on the standard resource representation. These annotations use the format `propertyName@delta`, for example `members@delta` for a group's membership changes.</p></li></ul> |
| Response indicating  deleted items| Indicates a deleted item with an additional property of *aad.isDeleted* set to true. | Indicates a deleted item with the `@removed` annotation. It might also contain a reason code, which indicates if the item is deleted, but can be restored, or is permanently deleted. |

If your app already stores state data, use the "sync from now" functionality to help manage the transition to delta queries for supported resources.

## Batching

Azure AD Graph used a system called multi-part MIME messages to manage batching. Microsoft Graph uses [JSON batching](json-batching.md) to allow up to 20 requests in a single batch operation. The JSON batching mechanism is simpler to use, especially with JSON parsing libraries. It also allows for sequencing batch operations. However, it isn't backwards compatible with the Azure AD Graph batching approach.

## Next step

> [!div class="nextstepaction"]
> [Review the migration checklist again](migrate-azure-ad-graph-planning-checklist.md) to ensure you have covered all necessary steps for a smooth migration.

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Warning: /concepts/migrate-azure-ad-graph-feature-changes.md:
      Failed to parse any rows out of table with headers: |Task|Azure AD Graph|Microsoft Graph|"
  ],
}
-->
