---
title: "Azure Active Directory consent requests"
description: "Use the consent request APIs to configure the consent request workflow and to manage consent requests for users attempting to access apps that require admin consent."
ms.localizationpriority: medium
author: "eringreenlee"
ms.prod: "governance"
doc_type: conceptualPageType
ms.date: 09/28/2022
---

# Azure Active Directory consent requests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) consent requests help you manage the request workflow for users attempting to access apps that require admin approval.

Before an app can be used to access any data in your organization, the admin must consent for it to be used in the tenant. In addition, before a user can grant a consented application specific permissions to act on their behalf, the admin must also consent for users to be allowed to consent to those permissions for the app. Consent management is one way that Azure AD helps organizations to enforce application and data security.

The Azure AD consent workflow allows users to request the tenant admins to grant consent to apps that require admin approval. The consent requests APIs in Microsoft Graph allows admin to configure the consent workflow and track consent requests for both apps and users.

>[!NOTE]
>The current APIs are limited to configuring the workflow and reading the list of requests. At this time, there aren’t any methods available to programmatically approve or deny a request. However, the contents of the request can be used to recreate a URL which can be used to grant admin consent and approve a request.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Configure the admin consent workflow

The admin consent policy specifies whether users can request for admin consent for apps that require admin authorization for the tenant. Use the [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) resource type and its associated methods to configure the admin consent workflow as follows:
+ Enable or disable the consent workflow.
+ Configure reviewers of admin consent requests.
+ Configure how long a pending request is valid before it expires and the principals who are notified of pending requests.

## Retrieve app consent requests

When a user requests for consent to use an app in the organization or to grant permissions to an app, they create a consent request for the app. App consent requests are retrieved through the [appConsentRequest](../resources/appconsentrequest.md) resource type and its associated methods.

You can:
+ Retrieve all app consent requests and the associated collection of user consent requests for the app. An app consent request may have one or more user consent requests representing multiple requests from the same or multiple users.
+ Retrieve the permissions that the user has requested for the app on their behalf.
+ Use `$filter` to match against pending requests.
+ Retrieve the app consent requests for which the signed-in user is the creator of the request.

## Retrieve user consent requests

When a user requests for consent to use an app in the organization or to grant permissions to an app, they create a consent request for the tenant admin to allow them to use the app. User consent requests are retrieved through the [userConsentRequest](../resources/userconsentrequest.md) resource type and its associated methods.

You can:
+ Retrieve the details about the user consent requests.
+ Retrieve the stages of approval that the consent request went through. The approval process is currently a single-stage process.
+ Retrieve the status of the approvals, whether pending or completed, and whether the reviewers decisions were to deny or approve the consent request.

## Role and delegated permission authorization checks

The following directory roles are required for a calling application.

| Operation | Delegated permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | ConsentRequest.Read.All, ConsentRequest.ReadWrite.All | Global Reader, Cloud App Administrator, Application Administrator, or Global Administrator   |

## See also

- Learn more about how to [configure the admin consent workflow (preview)](/azure/active-directory/manage-apps/configure-admin-consent-workflow).
- Understand the user and admin consent flows in the [Azure AD application consent experiences](/azure/active-directory/develop/application-consent-experience).


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
