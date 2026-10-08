---
author: ombongifaith
ms.topic: include
ms.date: 02/25/2026
ms.localizationpriority: medium
---

### $search for directory objects fails for encoded ampersand (&) character

<!-- {
  "ms.author": "syprieur",
  "ms.reviewer": ""
} -->

As per RFC 3986 and as described in [Encoding query parameters](/graph/query-parameters#encoding-query-parameters), reserved characters in query strings must be percent-encoded. For example, the syntax for `$search` on a group name like "Hiking&Recreation" is as follows:

```http
GET https://graph.microsoft.com/v1.0/groups?$search="displayName:Hiking%26Recreation group"
```

Microsoft Graph currently returns a `400 Bad Request` error code on the v1.0 endpoint on searches that include encoded ampersand (&) characters, with the following error message: `Unrecognized query argument specified: ''.`. The same request succeeds on the beta endpoint.

Some apps have implemented double-percent encoding on the v1.0 endpoint as a workaround. For example, the double-percent encoded request becomes `/users?$search="displayName:Hiking%2526Recreation group"`. However, this isn't the officially recommended workaround.

#### Workaround

**Workaround 1:**

On the v1.0 endpoint, when using the proper percent-encoding, include the `Prefer` request header set to `legacySearch=false`. For example:

```http
GET https://graph.microsoft.com/v1.0/groups?$search="displayName:Hiking%26Recreation group"
ConsistencyLevel: eventual
Prefer: legacySearch=false
```

In the future, the behavior on the v1.0 endpoint will be corrected, and you won't need to include this header.

**Workaround 2:**

When the behavior on the v1.0 endpoint is corrected, apps with dependency on the double-percent encoding may experience breaking changes unless they're opted-in to maintain their implementation by including the `Prefer` request header set to `legacySearch=true`. For example:

```http
GET https://graph.microsoft.com/v1.0/groups?$search="displayName:Hiking%2526Recreation group"
ConsistencyLevel: eventual
Prefer: legacySearch=true
```

### Some limitations apply to query parameters

<!-- {
  "ms.author": "lucaspol",
  "ms.reviewer": ""
} -->

The following limitations apply to query parameters:

- Multiple namespaces aren't supported.
- GET requests on `$ref` and casting aren't supported on users, groups, devices, service principals, and applications.
- `@odata.bind` isn't supported. This means that you can't properly set the **acceptedSenders** or **rejectedSenders** navigation property on a group.
- `@odata.id` isn't present on noncontainment navigations (like messages) when using minimal metadata.
- `$expand` on relationships of directory objects:
  - Returns a maximum of 20 objects except for `/users?$expand=registeredDevices`, which returns up to 100 objects.
  - No support for `@odata.nextLink`.
  - No support for more than one level of expand.
  - No support for nesting other query parameters such as `$filter` and `$select` inside an `$expand` query.
- `$filter`:
  - `/attachments` endpoint doesn't support filters. If present, the `$filter` parameter is ignored.
  - Cross-workload filtering isn't supported.
  - When using the `in` operator, the request is limited to 15 expressions in the filter clause by default OR a URL length of 2,048 characters when using advanced query capabilities.
  - When filtering using the `eq` operator, the maximum limit of the value to match is 120 characters. That is, `$filter=displayName eq 'value-to-match-max-120-char'`. This limitation applies even for properties like **displayName** on directory objects that can be up to 256 characters. When using advanced queries, the limit is applied on the URL length at 2,048 characters instead of the matched value.
- `$search`:
  - Full-text search is only available for a subset of entities, such as messages.
  - Cross-workload searching isn't supported.
  - Searching isn't supported in Azure AD B2C tenants.
- `$count`:
  - Not supported in Azure AD B2C tenants.
  - When using the `$count=true` query string when querying against directory resources, the `@odata.count` property is present only on the first page of the paged data.
- Query parameters specified in a request might fail silently. This can be true for unsupported query parameters and for unsupported combinations of query parameters.
