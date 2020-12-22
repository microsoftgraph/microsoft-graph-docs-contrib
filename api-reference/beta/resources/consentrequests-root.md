---
title: "Azure AD consent request API"
description: "You can use Azure AD consent requests to manage the request workflow for users attempting to access apps that require access to organizational data."
localization_priority: Normal
author: "Zawad"
ms.prod: "microsoft-identity-platform"
doc_type: conceptualPageType
---

# Azure AD access reviews (Group memberships)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) consent requests can help you manage the request workflow for users attempting to access apps that require access to organizational data.  

By defining the consent request policy, you can enable the consent request workflow that allows users to request access to applications they are not authorized to grant consent to.  

>[!NOTE]
>The current APIs are limited to configuring the workflow and reading the list of requests. At this time there aren’t any methods available to approve or deny a request programmatically. However, the contents of the request can be used to recreate a URL which can be used to grant admin consent and approve a request. 

The consent request resource types include:

  1. [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md): Specifies the policy by which app consent requests can be created and managed for the entire tenant. There is a single adminConsentRequestPolicy per tenant.
  2. [userConsentRequest](../resources/userconsentrequest.md): A request created by a user to use an app that requires access to organizational data the user is unauthorized to grant consent to themselves.
  3. [appConsentRequest](../resources/appconsentrequest.md): A request that represents an aggregation of userConsentRequests for a specific application.
  4. [appConsentRequestScope](../resources/appconsentrequestscope.md): A complex type that contains details of the dynamic permission scopes being requested for a given application.  


## Methods

The following table lists the methods that you can use to interact with access review-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
|[Get adminConsentRequestPolicy](../api/adminconsentrequestpolicy-get.md) | [adminConsentRequestPolicy](adminconsentrequestpolicy.md) collection | Read the properties of the [adminConsentRequestPolicy](adminconsentrequestpolicy.md) |
|[Update adminConsentRequestPolicy](../api/adminconsentrequestpolicy-update) | [adminConsentRequestPolicy](adminconsentrequestpolicy.md) collection | Set configurations for the [adminConsentRequestPolicy](adminconsentrequestpolicy.md) |
|Update Consent Policy Settings| none | The **EnableAdminConsentRequest** flag of the Consent Policy Settings object of the [directory settings](../resources/directorysetting.md) resource  determines if users are shown the prompt to request access. |
|[List appConsentRequests ](../api/appconsentrequest-list.md) | [appConsentRequest](appconsentrequest.md) collection | Retrieve a list of all [appConsentRequests](appconsentrequest.md) |
|[Get appConsentRequests ](../api/appconsentrequest-get.md) | [appConsentRequest](appconsentrequest.md) collection | Read a given [appConsentRequest](appconsentrequest.md) |
|[Get userConsentRequests ](../api/userconsentrequest-get.md) | [userConsentRequest](userconsentrequest.md) collection | Retrieve a given [userConsentRequests](userconsentrequest.md) for a given [appConsentRequest](appconsentrequest.md) |
|[List userConsentRequests ](../api/userconsentrequest-list.md) | [userConsentRequest](userconsentrequest.md) collection | Retrieve a list of all [userConsentRequests](userconsentrequest.md) for a given [appConsentRequest](appconsentrequest.md) |
|[List appConsentRequestsForApproval](../api/user-list-appconsentrequestsforapproval.md) | [appConsentRequest](appconsentrequest.md) collection | Retrieve a list of pending [appConsentRequests](appconsentrequest.md) that you are an approver of .|
|[List userConsentRequests for the appConsentRequestsForApproval ](../api/user-list-appconsentrequestsforapproval.md) | [appConsentRequest](appconsentrequest.md) collection | Retrieve a list of pending [appConsentRequests](appconsentrequest.md) that you are an approver of .|


## Role and application permission authorization checks

The following directory roles are required for a calling user to manage the requets workflow or read the list of requests.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | ConsentRequest.Read.All, ConsentRequest.ReadWrite.All | Global Administrator, Global Reader, Cloud App Administrator, and Application Administrator |
| Update | ConsentRequest.ReadWrite.All |Global Administrator |

## See also

- [Configure the admin consent workflow (preview)](/azure/active-directory/manage-apps/configure-admin-consent-workflow)


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


