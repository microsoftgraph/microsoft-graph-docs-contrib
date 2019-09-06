---
title: "Microsoft Graph throttling guidance"
description: "Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service."
author: "piotrci"
localization_priority: Priority
---

# Microsoft Graph throttling guidance

Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service.

Throttling limits vary based on the scenario. For example, if you are performing a large volume of writes, the possibility for throttling is higher than if you are only performing reads.

<!-- markdownlint-disable MD034 -->
> [!VIDEO https://www.youtube-nocookie.com/embed/J4CFxVuzNMA]
<!-- markdownlint-enable MD034 -->

<!-- markdownlint-disable MD026 -->
## What happens when throttling occurs?
<!-- markdownlint-enable MD026 -->

When a throttling threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request. Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all requests types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.

## Common throttling scenarios

The most common causes of throttling of clients include:

- A large number of requests across all applications in a tenant.
- A large number of requests from a particular application across all tenants.

## Best practices to handle throttling

The following are best practices for handling throttling:

- Reduce the number of operations per request.
- Reduce the frequency of calls.
- Avoid immediate retries, because all requests accrue against your usage limits.

When you implement error handling, use the HTTP error code 429 to detect throttling. The failed response includes the `Retry-After` response header. Backing off requests using the `Retry-After` delay is the fastest way to recover from throttling because Microsoft Graph continues to log resource usage while a client is being throttled.

1. Wait the number of seconds specified in the `Retry-After` header.
2. Retry the request.
3. If the request fails again with a 429 error code, you are still being throttled. Continue to use the recommended `Retry-After` delay and retry the request until it succeeds.

The following resources currently provide a `Retry-After` header:

- [User](/graph/api/resources/user?view=graph-rest-1.0)
- [Photo](/graph/api/resources/profilephoto?view=graph-rest-1.0)
- [Mail](/graph/api/resources/message?view=graph-rest-1.0)
- [Calendar (users and groups)](/graph/api/resources/event?view=graph-rest-1.0)
- [Contact](/graph/api/resources/contact?view=graph-rest-1.0)
- [Attachment](/graph/api/resources/attachment?view=graph-rest-1.0)
- [Group conversations](/graph/api/resources/conversation?view=graph-rest-1.0)
- [People and social](/graph/api/resources/social-overview?view=graph-rest-beta)
- [Drive (OneDrive)](/graph/api/resources/drive?view=graph-rest-1.0)

For a broader discussion of throttling on the Microsoft Cloud, see [Throttling Pattern](https://msdn.microsoft.com/library/office/dn589798.aspx).

## Service-specific limits

The Microsoft Graph allows you to access data in [multiple services](overview-major-services.md), such as Outlook or Azure Active Directory. These services impose their own throttling limits that impact applications that use Microsoft Graph to access them.

> [!NOTE]
> The specific limits described here are subject to change.

### Outlook service limits

Outlook service limits are evaluated for each app ID and mailbox combination. In other words, the limits described below apply to a specific app accessing a specific mailbox (user or group). If an application exceeds the limit in one mailbox, it does not impact the ability to access another mailbox.

| Limit                                                      | Applies to      |
|------------------------------------------------------------|-----------------|
| 10,000 API requests in a 10 minute period                  | Beta and v1.0 Graph endpoints |
| 4 concurrent requests                                      | Beta Graph endpoint |
| 15 megabit upload (PATCH, POST, PUT) in a 30 second period | Beta Graph endpoint |

#### Outlook service resources

The following resources are provided by the Outlook service.

##### Calendar API resources

- [event](/graph/api/resources/resources/event)
- [eventMessage](/graph/api/resources/resources/eventmessage)
- [calendar](/graph/api/resources/resources/calendar)
- [calendarGroup](/graph/api/resources/resources/calendargroup)
- [outlookCategory](/graph/api/resources/resources/outlookcategory)
- [attachment](/graph/api/resources/resources/attachment)
- [place](/graph/api/resources/resources/place)

##### Mail API resources

- [message](/graph/api/resources/resources/message)
- [mailFolder](/graph/api/resources/resources/mailfolder)
- [mailSearchFolder](/graph/api/resources/resources/mailsearchfolder)
- [messageRule](/graph/api/resources/resources/messagerule)
- [outlookCategory](/graph/api/resources/resources/outlookcategory)
- [attachment](/graph/api/resources/resources/attachment)

##### Personal contacts API resources

- [contact](/graph/api/resources/resources/contact)
- [contactFolder](/graph/api/resources/resources/contactfolder)
- [outlookCategory](/graph/api/resources/resources/outlookcategory)

##### Social and workplace intelligence resources

- [person](/graph/api/resources/resources/person)

##### To-do tasks API resources

- [outlookTask](/graph/api/resources/resources/outlooktask)
- [outlookTaskFolder](/graph/api/resources/resources/outlooktaskfolder)
- [outlookTaskGroup](/graph/api/resources/resources/outlooktaskgroup)
- [outlookCategory](/graph/api/resources/resources/outlookcategory)
- [attachment](/graph/api/resources/resources/attachment)