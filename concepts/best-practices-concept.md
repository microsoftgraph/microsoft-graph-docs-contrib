---
title: "Best practices for working with Microsoft Graph"
description: "Apply these best practices to improve your Microsoft Graph application's performance and make your app more reliable for end users."
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 11/07/2024
---

# Best practices for working with Microsoft Graph

This article describes best practices that you can apply to help your applications get the most out of Microsoft Graph&mdash;whether that involves learning about Microsoft Graph, improving app performance, or making your application more reliable for end users.

## Use Graph Explorer to get to know the API

The easiest way to start exploring the data available through Microsoft Graph is to use [Graph Explorer](https://aka.ms/ge). Graph Explorer lets you craft REST requests (with full CRUD support), adapt the HTTP request headers, and see the data responses. To help you get started, Graph Explorer also provides a set of sample queries.

Experiment with new APIs before you integrate them into your application.

## Authentication

To access data through Microsoft Graph, your application needs to acquire an OAuth 2.0 access token, and present it to Microsoft Graph in either of the following options:

- The HTTP *Authorization* request header, as a *Bearer* token
- The graph client constructor, when using a Microsoft Graph client library

Use the [Microsoft Authentication Library (MSAL)](/azure/active-directory/develop/active-directory-v2-libraries) to acquire the access token to Microsoft Graph.

## Consent and authorization

Apply the following best practices for consent and authorization in your app:

- **Apply least privilege**. Grant users and apps only the lowest privileged permission they require to call the API. Check the permissions section in the method topics (for example, see [creating a user](/graph/api/user-post-users)), and choose the least privileged permissions. For example, if the app will read only the profile of the currently signed-in user, grant *User.Read* instead of *User.ReadBasic.All*. If an app doesn't read the user's calendar, don't grant it the *Calendars.Read* permission. For a full list of permissions, see [permissions reference](permissions-reference.md).

- **Use the correct permission type based on scenarios**. Avoid using both application and delegated permissions in the same app. If you're building an interactive application where a signed-in user is present, your application should use *delegated permissions*. If, however, your application runs without a signed-in user, such as a background service or daemon, your application should use *application permissions*.

  > [!CAUTION]
  > Using application permissions for interactive scenarios can put your application at compliance and security risk. It can inadvertently elevate a user's privileges to access data, bypassing policies configured by an administrator.

- **Be thoughtful when configuring your app**. This will directly affect end user and admin experiences, along with application adoption and security. For example:

  - Your application's name, logo, domain, publisher verification status, privacy statement, and terms of use show up in consent and other experiences. Configure these settings carefully so they're understood by your end users.
  - Consider who will be consenting to your application - either end users or administrators - and configure your application to [request permissions appropriately](/azure/active-directory/develop/active-directory-v2-scopes).
  - Ensure that you understand the difference between [static, dynamic, and incremental consent](/azure/active-directory/develop/v2-permissions-and-consent#consent-types).

- **Consider multi-tenant applications**. Expect customers to have various application and consent controls in different states. For example:

  - Tenant administrators can disable the ability for end users to consent to applications. In this case, an administrator would need to consent on behalf of their users.
  - Tenant administrators can set custom authorization policies such as blocking users from reading other user's profiles, or limiting self-service group creation to a limited set of users. In this case, your application should expect to handle `403 Forbidden` error response when acting on behalf of a user.

## Handle responses effectively

Depending on the requests you make to Microsoft Graph, your applications should be prepared to handle different types of responses. The following are some of the most important practices to follow to ensure that your application behaves reliably and predictably for your end users.

### Pagination

When querying a resource collection, you should expect that Microsoft Graph will return the result set in multiple pages, due to server-side page size limits. When a result set spans multiple pages, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results.

For example, listing the signed-in users messages:

```http
GET https://graph.microsoft.com/v1.0/me/messages
```

Would return a response containing an `@odata.nextLink` property, if the result set exceeds the server-side page size limit.

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$skip=23"
```

> [!NOTE]
> Your application should **always** handle the possibility that the responses are paged in nature, and use the `@odata.nextLink` property to obtain the next paged set of results, until all pages of the result set have been read. The final page will not contain an `@odata.nextLink` property. You should include the entire URL in the `@odata.nextLink` property in your request for the next page of results, treating the entire URL as an opaque string.

For more information, see [paging](paging.md).

### Handling expected errors

While your application should handle all error responses (in the 400 and 500 ranges), pay special attention to certain expected errors and responses, listed in the following table.

| Topic   | HTTP error code    | Best practice|
|:-----------|:--------|:----------|
| User doesn't have access | 403 | If your application is up and running, it could encounter this error even if it has been granted the necessary permissions through a consent experience. In this case, it's most likely that the signed-in user doesn't have privileges to access the resource requested. Your application should provide a generic "Access denied" error back to the signed-in user. |
|Not found| 404 | In certain cases, a requested resource might not be found. For example, a resource might not exist, because it hasn't yet been provisioned (like a user's photo) or because it has been deleted. Some deleted resources *might* be fully restored within 30 days of deletion - such as user, group and application resources, so your application should also take this into account.|
|Throttling|429|APIs might throttle at any time for various reasons, so your application must **always** be prepared to handle 429 responses. This error response includes the *Retry-After* field in the HTTP response header. Backing off requests using the *Retry-After* delay is the fastest way to recover from throttling. For more information, see [throttling](throttling.md).|
|Service unavailable| 503 | This is likely because the services are busy. You should employ a back-off strategy similar to 429. Additionally, you should **always** make new retry requests over a new HTTP connection.|

### Handling future members in evolvable enumerations

Adding members to existing enumerations can break applications already using these enums. Evolvable enums is a mechanism that Microsoft Graph API uses to add new members to existing enumerations without causing a breaking change for applications.

Evolvable enums have a common _sentinel_ member called `unknownFutureValue` that demarcates known members that have been defined in the enum initially, and unknown members that are added subsequently or will be defined in the future. Internally, known members are mapped to numeric values that are less than the sentinel member, and unknown members are greater than the sentinel member. The documentation for an evolvable enum lists the possible _string_ values in ascending order: known members, followed by `unknownFutureValue`, followed by unknown members. Like other types of enumerations, you should _always_ reference members of evolvable enums by their _string_ values.

By default, a GET operation returns only known members for properties of evolvable enum types and your application needs to handle only the known members. If you design your application to handle unknown members as well, you can opt in to receive those members by using an HTTP `Prefer` request header:
```http
Prefer: include-unknown-enum-members
```


## Storing data locally

Your application should ideally make calls to Microsoft Graph to retrieve data in real time as necessary. You should only cache or store data locally if required for a specific scenario, and if that use case is covered by your terms of use and privacy policy, and does not violate the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=/graph/context). Your application should also implement proper retention and deletion policies.

## Optimizations

In general, for performance and even security or privacy reasons, you should only get the data your application really needs, and nothing more.

### Use projections

Choose only the properties your application really needs and no more, because this saves unnecessary network traffic and data processing in your application (and in the service).

> [!NOTE]
> Use the `$select` query parameter to limit the properties returned by a query to those needed by your application.

For example, when retrieving the messages of the signed-in user, you can specify that only the **from** and **subject** properties be returned:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

When you make a GET request without using `$select` to limit the amount of properties data, Microsoft Graph includes a **@microsoft.graph.tips** property that provides a best practice recommendation for using `$select` similar to the following message:

```html
"@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET groups?$select=appMetadata,assignedLabels",
```

### Getting minimal responses

For some operations, such as PUT and PATCH (and in some cases POST), if your application doesn't need to make use of a response payload, you can ask the API to return minimal data. Some services already return a `204 No Content` response for PUT and PATCH operations.

> [!NOTE]
> Request minimal representation responses using the **Prefer** header set to `return=minimal`, where supported. For creation operations, use of this header might not be appropriate because your application may expect to get the service generated `id` for the newly created object in the response.

### Track changes: delta query and webhook notifications

If your application needs to know about changes to data, you can get a webhook notification whenever data of interest has changed. This is more efficient than simply polling regularly.

Use [webhook notifications](/graph/api/resources/webhooks) to get push notifications when data changes.

If your application is required to cache or store Microsoft Graph data locally, and keep that data up to date, or track changes to data for any other reasons, you should use delta query. This avoids excessive computation by your application to retrieve data your application already has, minimize network traffic, and reduce the likelihood of reaching a throttling threshold.

Use [delta query](delta-query-overview.md) to efficiently keep data up to date.

### Using webhooks and delta query together

Webhooks and delta query are often used better together, because if you use delta query alone, you need to figure out the right polling interval - too short and this might lead to empty responses, which waste resources, too long and you might end up with stale data. If you use webhook notifications as the trigger to make delta query calls, you get the best of both worlds.

Use [webhook notifications](/graph/api/resources/webhooks) as the trigger to make delta query calls. You should also ensure that your application has a backstop polling threshold, in case no notifications are triggered.

### Batching

JSON batching allows you to optimize your application by combining multiple requests into a single JSON object. Combining individual requests into a single batch request can save the application significant network latency and can conserve connection resources.

Use [batching](json-batching.md) where significant network latency can have a significant impact on the performance.

## Reliability and support
To ensure reliability and facilitate support for your application:

- Use TLS 1.3 or 1.2 to support all capabilities of Microsoft Graph. Migrate from TLS 1.0 and 1.1. For more information, see [Enable support for TLS 1.2 in your environment](/troubleshoot/azure/active-directory/enable-support-tls-environment).
- Honor DNS TTL and set connection TTL to match it. This ensures availability in case of failovers.
- Open connections to all advertised DNS answers.
- Generate a unique GUID and send it on each Microsoft Graph REST request. This helps Microsoft investigate any errors more easily if you need to report an issue with Microsoft Graph.
  - On every request to Microsoft Graph, generate a unique GUID, send it in the `client-request-id` HTTP request header, and also log it in your application's logs.
  - Always log the full HTTP Graph API call including the full URL, all the headers and JSON body for both the response and the request. These are required when reporting issues in [Microsoft Q&A](/answers/products/m365#microsoft-graph) or to Microsoft Support.
  - If you're using a third-party application, the app vendor needs to engage with our support team to investigate the issue.
