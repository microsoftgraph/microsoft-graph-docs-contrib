---
title: "Azure Active Directory consent requests"
description: "Use Azure AD consent requests to manage the request workflow for users attempting to access apps that require admin consent."
localization_priority: Normal
author: "psignoret"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure Active Directory consent requests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) consent requests help you manage the request workflow for users attempting to access apps that require admin approval.

To allow users to request access or admin consent for applications they're unauthorized to grant consent to themselves, first enable the consent request workflow. 

>[!NOTE]
>The current APIs are limited to configuring the workflow, reading the list of requests, and denying a request. At this time there aren’t any methods available to approve a request programmatically. However, the contents of the request can be used to recreate a URL which can be used to grant admin consent and approve a request.

The consent request resource types include:

* [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md): Specifies the policy by which app consent requests can be created and managed for the entire tenant. There is a single **adminConsentRequestPolicy** per tenant.
* [appConsentRequest](../resources/appconsentrequest.md): A request that represents an aggregation of **userConsentRequests** for a specific application.
* [userConsentRequest](../resources/userconsentrequest.md): A request created by a user to use an app that requires admin consent to access.
* [appConsentRequestScope](../resources/appconsentrequestscope.md): A resource that contains details of the dynamic permission scopes being requested for a given application.  


## Methods

The following table lists the methods that you can use to interact with consent request resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md) | [adminConsentRequestPolicy](adminconsentrequestpolicy.md) collection | Read the properties of the [adminConsentRequestPolicy](adminconsentrequestpolicy.md) |
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update.md) | [adminConsentRequestPolicy](adminconsentrequestpolicy.md) collection | Set configurations for the [adminConsentRequestPolicy](adminconsentrequestpolicy.md) |
|[List appConsentRequests ](../api/appconsentrequest-list.md) | [appConsentRequest](appconsentrequest.md) collection | Retrieve a list of all [appConsentRequests](appconsentrequest.md) |
|[Get appConsentRequests ](../api/appconsentrequest-get.md) | [appConsentRequest](appconsentrequest.md) collection | Read a given [appConsentRequest](appconsentrequest.md) |
|[List appConsentRequests: filterByCurrentUser](../api/appconsentrequest-filterByCurrentUser.md) | [appConsentRequests](../resources/appconsentrequest.md) collection | Read the properties of the [appConsentRequests](../resources/appconsentrequest.md) for which the current user is the reviewer and the status of the user consent request is `InProgress`. |
|[Get userConsentRequests ](../api/userconsentrequest-get.md) | [userConsentRequest](userconsentrequest.md) collection | Retrieve a given [userConsentRequests](userconsentrequest.md) for a given [appConsentRequest](appconsentrequest.md) |
|[List userConsentRequests ](../api/userconsentrequest-list.md) | [userConsentRequest](userconsentrequest.md) collection | Retrieve a list of all [userConsentRequests](userconsentrequest.md) for a given [appConsentRequest](appconsentrequest.md) |
|[List userConsentRequests: filterByCurrentUser](../api/userconsentrequest-filterByCurrentUser.md) | [appConsentRequests](../resources/userconsentrequest.md) collection | Read the properties of the [userConsentRequests](../resources/userconsentrequest.md) for which the current user is the reviewer and the status of the user consent request is `InProgress`. |

## Role and delegated permission authorization checks

The following directory roles are required for a calling user to manage the requests workflow or read the list of requests.

| Operation | Delegated permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | ConsentRequest.Read.All, ConsentRequest.ReadWrite.All | Global Administrator, Global Reader, Cloud App Administrator, and Application Administrator |
| Update | ConsentRequest.ReadWrite.All |Global Administrator |

## See also

- [Configure the admin consent workflow (preview)](/azure/active-directory/manage-apps/configure-admin-consent-workflow?preserve-view=true)


<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
