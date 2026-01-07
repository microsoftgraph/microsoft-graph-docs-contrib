---
title: "Best practices for using Microsoft Graph permissions"
description: "Best practices for using Microsoft Graph permissions when building a Microsoft Teams app."
ms.localizationpriority: high
author: v-sdhakshina
ms.author: v-sdhakshina
ms.subservice: teams
ms.date: 11/07/2024
ms.topic: best-practice
---

# Best practices for using Microsoft Graph permissions

When you create a Microsoft Teams app with advanced collaboration, design it with a strong focus on customer privacy and security to ensure widespread use and adoption.

This article describes best practices for using Microsoft Graph permissions when building a Teams app intended for distribution.

## Implement the principle of least privilege

Microsoft Graph offers granular permissions that allow an app to request only the permissions it requires. Microsoft Graph provides this capability because customer tenant admins might not approve apps or app features that request more permissions than they need. By requesting the fewest, least-privileged permissions required for your app, you apply the principle of least privilege, which builds trust with customer tenant admins.

The fewer permissions an app requests, the fewer privacy concerns for customers. Therefore, reconsider features if simpler ones provide similar value while requiring fewer Graph endpoint or permissions.

Microsoft Graph supports two types of access scenarios: delegated access and application access. In delegated access, the app calls Microsoft Graph on behalf of a signed-in user. In application access, the app calls Microsoft Graph with its own identity, without a signed in user. [Resource-specific Consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions support both delegated and application access, but are restricted to the domain where the app is installed. For more information, see [Microsoft Graph permissions](permissions-overview.md).

The lower the privilege of the requested permissions, the fewer privacy concerns for customers. Prefer RSC permissions because they offer a higher level of privacy. Delegated permissions allow the application to act on behalf of a signed-in user, limiting access to the data within the user’s scope. If you can't use either RSC or delegated permissions, you must use application permissions. Application permissions carry the most privacy risks as they allow access to data without a signed-in user.

The following examples describe some scenarios that use the least privilege principle:

* Apps that only read the signed-in user’s profile information require the `User.Read` permission, which is the least privileged permission to access the user’s details. The `User.ReadWrite` permission is unnecessary, as its over-privileges the app, which doesn't need to modify the user’s profile.

* Apps that read tenant groups without a signed-in user require `Group.Read.All` application permission.

* Apps that manage dynamic jobs and sync with the user’s Outlook calendar to read and update require `Calendars.ReadWrite` permission.

* Apps published on the Teams store can use the app persistent ID instead of using `AppCatalog.Read.All` to get the app ID.

* Apps that send messages to a chat can use `ChatMessage.Send.Chat` RSC permission instead of the `Chat.ReadWrite` delegated Microsoft Graph permission.

For more information on applying the principle of least privilege, see [Enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access) and [Building apps that secure identity through permissions and consent](/security/zero-trust/develop/identity).

## Maximize app value and user experience for customers with limited permissions

Tenant admins can block permissions on which your app relies. Anticipate this by providing alternatives to maximize your app's value. Even without certain permissions granted on a customer tenant, an app must still offer value to the user. Only the specific functionality that requires the blocked permission should be unavailable. Consider the following scenarios that show how to maximize user value when permissions are blocked:

* **Create fallback workarounds**: Have permissionless alternatives ready for when preferred features are blocked, ensuring users still receive the best possible experience. For example, if you use `Presence.Read.All` to display the statuses of users in the app and the permission is denied, hide the presence indicator to avoid confusion from the *Unknown* status. Or, if an app creates a calendar event, use the [deep link method](/microsoftteams/platform/concepts/build-and-test/deep-link-workflow?tabs=teamsjs-v2) as a fallback to using Graph and requesting the `Calendar.ReadWrite` permission. Using a deep link allows customers to use the **Add event to my calendar** feature even if they don’t grant the permissions.
* **Implement feature management**: Use toggles or other management tools to adjust features based on the permissions granted by the customer.
* **Consider staggered permissions for user-installed apps**: For user-installed apps, consider using [staggered permissions](/samples/officedev/microsoft-teams-samples/officedev-microsoft-teams-samples-tab-staggered-permission-nodejs/) to request permissions only when necessary for a feature, aligning with user privacy policies, and potentially increasing app usage. This approach might not be suitable for admin-installed apps.

## Manage app launches and updates with customers

To manage new app versions with permission changes effectively, communicate with customers to maintain trust and prevent churn. Consider the following when updating your app:

* **Group permission changes together**: Consolidate permission changes into a single release to minimize the frequency of updates and customer impacts.
* **Manage updates in advance**: Plan and communicate permission updates well in advance to allow customers to initiate their internal approval processes, avoiding any interruption in app functionality.

## Document and share the required permission with customers

Clearly document all permissions in a format and language that are accessible to both technical and business stakeholders. The following list provides concrete suggestions for clearly documenting the permissions choices in your app:

* **Explain use cases**: Provide explanations that relate directly to the app’s use cases and scenarios, detailing the value added by each permission.
* **Include visuals**: Use screenshots to illustrate where permissions are needed within the app.
* **Describe impact of non-granted permissions**: For high-value scenarios, describe the impact on users if the permission isn't granted.
* **Provide clear app versions**: Create an easy-to-understand versioning system for published apps, Azure AD app registrations, and documentation. Such a versioning system enables customers to track features and approvals for each version.

## Use recommended app installation, consent, and updates for your Teams app

Customer tenant admins trust apps that adhere to standard procedures more than apps with custom installation and management systems. Consider the following installation best practices:

* **Offer standard app installation**: To maintain trust, publish your app using Microsoft’s official channels and use Microsoft’s recommended process for app installation. Don't use alternative installation methods, such as links or multiple apps, because they erode customer trust. Exceptions apply in circumstances such as [limiting application permissions to specific Exchange online mailboxes](auth-limit-mailbox-access.md), missing [Outlook mailbox](/exchange/recipients-in-exchange-online/manage-user-mailboxes/manage-user-mailboxes), or [SharePoint](/sharepoint/dev/solution-guidance/security-apponly-azureacs) controls.
* **Hide apps from users for admin-installed apps**: For admin-installed apps, consider setting the  `defaultBlockUntilAdminAction` parameter in the [app manifest](/microsoftteams/platform/resources/schema/manifest-schema) to **true** to hide the app from tenant users by default until an admin authorizes it. This approach might not be suitable for user-installed apps.

## Update your publisher attestation after changing permissions

To provide an experience that is trustworthy and is perceived as such by customers, update the [Publisher Attestation](/microsoft-365-app-certification/docs/enterprise-app-attestation-guide) to reflect permission changes for the app. If you don't, then the list of permissions on the Microsoft documentation page differs from the list of permissions requested by the app. This difference erodes customer trust and adoption.

## Microsoft 365 certification for Teams app

Certify your Teams app through the [Microsoft 365](/microsoft-365-app-certification/docs/enterprise-app-certification-guide) program. With Microsoft 365 certification, you affirm your dedication to adhering to security and privacy standards, which increase customer confidence and facilitate the approval process for your app and its permissions.

## See also

* [Overview of Microsoft Graph permissions](permissions-overview.md)
* [Microsoft Graph permissions reference](permissions-reference.md)
* [Resource-specific consent for your Teams app](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
